package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Optional;

@Service
public class PostService {
    private final PostRepository postRepository;

    static Pageable firstPageTwentyPosts  = PageRequest.of(0, 20);

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> listsOfPosts() {
        LocalDate date = LocalDate.now();
        return postRepository.findAllByPublishedBeforeAndPublishedIsNotNullOrderByPublishedDesc(date, firstPageTwentyPosts);
    }

    public Optional<Post> singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }
}