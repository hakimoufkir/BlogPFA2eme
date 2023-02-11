    <!-- Links -->
    <ul class="navbar-nav mx-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><img src="assets/photos/<?php echo $_SESSION['info']['avatar'];?>" width="60">
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><?php echo $_SESSION['info']['nom']?></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><?php echo $_SESSION['info']['prenom']?></a>
      </li>

      <!-- Dropdown -->
      <li class="nav-item dropdown">
        <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="index.php?logout">Logout</a>
        </div>
      </li>


      <li class="nav-item">
        <a href="?logout" class="btn btn-danger">Deconnexion</a>
      </li>
    </ul>
    <!-- Links -->