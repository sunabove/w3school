<?php
require_once __DIR__ . "/config.php";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if (!$conn) {
    die("DB 연결 실패: " . mysqli_connect_error());
}

mysqli_set_charset($conn, "utf8mb4");

$sql = "SELECT board_id, board_name, description, article_count, created_at
        FROM board
        ORDER BY board_id";

$result = mysqli_query($conn, $sql);

if (!$result) {
    die("쿼리 실행 실패: " . mysqli_error($conn));
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
</head>
<body>
    <h1>게시판 목록</h1>
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>번호</th>
            <th>게시판명</th>
            <th>설명</th>
            <th>글 수</th>
            <th>생성일</th>
        </tr>
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
        <tr>
            <td><?php echo htmlspecialchars($row["board_id"]); ?></td>
            <td><?php echo htmlspecialchars($row["board_name"]); ?></td>
            <td><?php echo htmlspecialchars($row["description"]); ?></td>
            <td><?php echo htmlspecialchars($row["article_count"]); ?></td>
            <td><?php echo htmlspecialchars($row["created_at"]); ?></td>
        </tr>
        <?php endwhile; ?>
    </table>
</body>
</html>
<?php
mysqli_free_result($result);
mysqli_close($conn);
?>
