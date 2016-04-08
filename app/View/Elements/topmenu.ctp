<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Paroki Babarsari</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <?php
                //echo '<span style="padding-right: 8px;">' . $this->Html->image($this->Session->read('Auth.Umat.filedir') . $this->Session->read('Auth.User.filename'), array('width'=>20, 'class'=>'mini-pp')) . '</span>';
//                $usr = $this->Umat->findById($this->Session->read('Auth.User.id_umat'));
                echo '<span>' .$this->Session->read('Auth.User.nama').", " . '</span>';
                $usrlvl = $this->Session->read('Auth.User.user_level');
                if($usrlvl == 1)
                  echo '<span>' . "JEMAAT " . '</span>';
                else if($usrlvl == 2)
                  echo '<span>' . "KETUA LINGKUNGAN " . '</span>';
                else if($usrlvl == 5){
                  echo '<span>' . "ADMIN " . '</span>';
                }
                if($usrlvl !=5)
                echo $this->Session->read('Auth.User.namaling');
                ?>
                <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><?php echo $this->Html->link('<i class="fa fa-pencil"></i> Ubah Profil', array('controller'=>'umats', 'action'=>'edit'), array('escape'=>false)) ?></li>
                <li><?php echo $this->Html->link('<i class="fa fa-unlock-alt"></i> Ubah Password', array('controller'=>'users', 'action'=>'editpasswords',$this->Session->read('Auth.User.id')), array('escape'=>false)) ?></li>
                <li role="separator" class="divider"></li>
                <li><?php echo $this->Html->link('<i class="fa fa-sign-out"></i> Logout', array('controller'=>'users', 'action'=>'logout'), array('escape'=>false)) ?></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
</nav>
