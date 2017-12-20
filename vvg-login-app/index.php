<?php
require_once 'head.php';

// redirect if not logged in
if (!isset($_SESSION['user'])) {
  header('Location: login.php');
  die;
}

echo $head;
echo $header;

// get users
$sql = 'SELECT id, email, first_name, last_name, is_active FROM users';

$isSearch = isset($_GET['q']);
if($isSearch) { $sql .= ' WHERE email LIKE :email'; }

$paginator = new Paginator($sql);
$page = isset($_GET['page']) ? intval($_GET['page']) : 0;
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 5;
$offset = $page * $limit;

$stmt = $db->prepare($paginator->getPaginatedSQL());
$stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
$stmt->bindParam(':limit', $limit, PDO::PARAM_INT);

if($isSearch) {
  $search = "%{$_GET['q']}%";
  $stmt->bindParam(':email', $search);
}

$stmt->execute();
$users = $stmt->fetchAll();
?>

<div class="container content-wrapper">
  <form method="GET" action="index.php">
    <div class="form-group">
      <input name="q"
             value="<?= isset($_GET['q']) ? $_GET['q'] : '' ?>"
             type="text" class="form-control" placeholder="Search for ..."
             autofocus="autofocus">
    </div>
  </form>
  <a href="add.php"><span class="oi oi-plus"></span></a>
  <table class="table table-hover">
    <thead>
    <tr>
      <th>#</th>
      <th>Email</th>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <?php foreach($users as $user): ?>
    <tr class="<?= $user['is_active'] === '1' ? '' : 'blocked' ?>">
      <th scope="row"><?= $user['id'] ?></th>
      <td><?= $user['email'] ?></td>
      <td><?= $user['first_name'] ?></td>
      <td><?= $user['last_name'] ?></td>
      <td>
        <a href="edit.php?id=<?= $user['id'] ?>"><span class="oi oi-pencil"></span></a>

        <?php $isMyId = $user['id'] === $_SESSION['user']['id']; ?>
        <?php if(!$isMyId): ?>
          <a href="delete.php?id=<?= $user['id'] ?>"><span class="oi oi-delete"></span></a>
          <?php if($user['is_active'] !== '1'): ?>
            <a href="change_activation.php?id=<?= $user['id'] ?>"><span class="oi oi-check"></span></a>
          <?php else: ?>
            <a href="change_activation.php?id=<?= $user['id'] ?>"><span class="oi oi-ban"></span></a>
          <?php endif; ?>
        <?php endif; ?>
      </td>
    </tr>
    <?php endforeach; ?>
    </tbody>
  </table>
  <div class="paginator">
    <?= $paginator->getLinkPrevious($page, $limit) ?>
    <?= $paginator->getLinkNext($page, $limit) ?>
  </div>
</div>

<?= $footer ?>
