<?php
	require_once 'db.php';
	// get users
	$sql = 'SELECT id, email, first_name, last_name, is_active FROM users';
	$stmt = $db->prepare($sql);
	$stmt->execute();
	$users = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html>
<head>
	<title>VVG APP</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<h1>Ovo je VVG APP</h1>

	<div class="container content-wrapper">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>#</th>
				<th>Email</th>
				<th>First Name</th>
				<th>Last Name</th>
			</tr>
			</thead>
			<tbody>
			<?php foreach($users as $user): ?>
			<tr>
				<th scope="row"><?= $user['id'] ?></th>
				<td><?= $user['email'] ?></td>
				<td><?= $user['first_name'] ?></td>
				<td><?= $user['last_name'] ?></td>
			</tr>
			<?php endforeach; ?>
			</tbody>
		</table>
	</div>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>