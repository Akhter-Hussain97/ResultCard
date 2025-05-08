<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ResultCard Template</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Student Result Search</h2>
<?php
  include('connect.php');
$search = $_GET['search'] ?? '';

$stmt = $conn->prepare("SELECT * FROM reg_card WHERE stdname LIKE ? OR rollno LIKE ?");
$searchParam = "%{$search}%";
$stmt->bind_param("ss", $searchParam, $searchParam);
$stmt->execute();
$result = $stmt->get_result();
?>
<form class="search-form" method="GET" action="index.php">
    <input type="text" name="search" placeholder="Enter name or roll number" value="<?= htmlspecialchars($search) ?>">
    <button type="submit">Search</button>
</form>

<?php if ($result->num_rows > 0): ?>
    <?php while($row = $result->fetch_assoc()): ?>
        <div class="card">
            <p><strong>Name:</strong><?= htmlspecialchars($row['stdname']) ?> </p>
            <p><strong>Roll Number:</strong>(<?= $row['rollno'] ?>)</p>
            <p><strong>Subject:</strong> <?= htmlspecialchars($row['subject']) ?></p>
            <p><strong>Marks:</strong> <?= $row['marks'] ?></p>
            <p> <strong>Grade:</strong> <?= htmlspecialchars($row['grade']) ?></p>
            <p><small><strong>Exam Date:</strong> <?= $row['examdate'] ?></small></p>
    </div>
    <?php endwhile; ?>
    <?php else: ?>
    <p class="no-results">No records found.</p>
    <?php endif; ?>
</body>
</html>