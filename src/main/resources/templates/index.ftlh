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

<div class="container mt-3">
    <h1>Blog posts</h1>
    <table class="table">
        <thead>
        <tr>
            <th>Titul</th>
            <th>Perex</th>
            <th>Datum</th>
            <th>Autor</th>
            <th></th>
        </tr>
        </thead>
        [#list posts.content as post]
        <tbody>
            <tr>
                <td>${post.title}</td>
                <td>${post.perex?no_esc}</td>
                [#if post.published?exists]
                <td>${post.published?date?string}</td>
                [/#if]
                <td>${post.author}</td>
                <td> <a href="/post/${post.slug}">„Přečíst“</a> </td>
            </tr>
        </tbody>
        [/#list]
    </table>
</div>
</body>
</html>
