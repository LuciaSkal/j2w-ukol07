[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Můj blog</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-primary"> ${post.slug} | ${post.title}</h2>
    <blockquote class="blockquote mt-3">
        <p class="mb-0">${post.perex?no_esc}</p>
    </blockquote>
    <div class="mt-3">
        <p>${post.body}</p>
    </div>

    <div class="mt-5">
        <span>${post.published?date?string}</span>
        <span>|</span>
        <span>${post.author}</span>
    </div>

    <nav class="d-flex flex-row-reverse mt-5">
        <a class="text-secondary" href="/">◂ zpět na seznam</a>
    </nav>
</div>
</body>
</html>