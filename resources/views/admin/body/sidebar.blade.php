@php
  $prefix = Request::route()->getPrefix();
  $route = Route::current()->getName();
@endphp

<aside class="main-sidebar">
    <!-- sidebar-->
    <section class="sidebar">	
		
        <div class="user-profile">
			<div class="ulogo">
				 <a href="index.html">
				  <!-- logo for regular state and mobile devices -->
					 <div class="d-flex align-items-center justify-content-center">					 	
						  <img src="{{ asset('backend/images/logo-dark.png')}}" alt="">
						  <h3><b>TAAS</b> Admin</h3>
					 </div>
				</a>
			</div>
        </div>
      
      <!-- sidebar menu-->
      <ul class="sidebar-menu" data-widget="tree">  
		  
		<li class="{{ $route == 'admin.dashboard'? 'active' : ''}}">
          <a href="{{ url('admin/dashboard')}}">
            <i data-feather="pie-chart"></i>
			<span>Dashboard</span>
          </a>
        </li>  
		
        <li class="treeview">
          <a href="#">
            <i data-feather="message-circle"></i>
            <span>Application</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="chat.html"><i class="ti-more"></i>Chat</a></li>
            <li><a href="calendar.html"><i class="ti-more"></i>Calendar</a></li>
          </ul>
        </li> 

        <li class="treeview {{ $route == 'all.brands'? 'active' : ''}}">
          <a href="#">
            <i data-feather="mail"></i> <span>Brands</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="{{ route('all.brands')}}"><i class="ti-more"></i>All Brands</a></li>
          </ul>
        </li>

        <li class="treeview {{ ($prefix == '/category')?'active':'' }}  ">
          <a href="#">
            <i data-feather="mail"></i> <span>Category </span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li class="{{ ($route == 'all.category')? 'active':'' }}"><a href="{{ route('all.category') }}"><i class="ti-more"></i>All Category</a></li>
          <li class="{{ ($route == 'all.subcategory')? 'active':'' }}"><a href="{{ route('all.subcategory') }}"><i class="ti-more"></i>All Sub Category</a></li>
          <li class="{{ ($route == 'all.subsubcategory')? 'active':'' }}"><a href="{{ route('all.subsubcategory') }}"><i class="ti-more"></i>All Sub->SubCategory</a></li>
        </ul>
        </li>

        <li class="treeview {{ ($prefix == '/product')?'active':'' }}  ">
          <a href="#">
            <i data-feather="file"></i>
            <span>Products</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="{{ ($route == 'add-product')? 'active':'' }}"><a href="{{ route('add-product') }}"><i class="ti-more"></i>Add Products</a></li>
            <li class="{{ ($route == 'manage-product')? 'active':'' }}"><a href="{{ route('manage-product') }}"><i class="ti-more"></i>Manage Products</a></li>
          </ul>
        </li> 	
		  
        <li class="treeview">
          <a href="#">
            <i data-feather="mail"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="mailbox_inbox.html"><i class="ti-more"></i>Inbox</a></li>
            <li><a href="mailbox_compose.html"><i class="ti-more"></i>Compose</a></li>
            <li><a href="mailbox_read_mail.html"><i class="ti-more"></i>Read</a></li>
          </ul>
        </li>
		
        <li class="treeview">
          <a href="#">
            <i data-feather="file"></i>
            <span>Pages</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="profile.html"><i class="ti-more"></i>Profile</a></li>
            <li><a href="invoice.html"><i class="ti-more"></i>Invoice</a></li>
            <li><a href="gallery.html"><i class="ti-more"></i>Gallery</a></li>
            <li><a href="faq.html"><i class="ti-more"></i>FAQs</a></li>
            <li><a href="timeline.html"><i class="ti-more"></i>Timeline</a></li>
          </ul>
        </li> 		  
		 
        <li class="header nav-small-cap">User Interface</li>
		  
        <li class="treeview">
          <a href="#">
            <i data-feather="grid"></i>
            <span>Components</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="components_alerts.html"><i class="ti-more"></i>Alerts</a></li>
            <li><a href="components_badges.html"><i class="ti-more"></i>Badge</a></li>
            <li><a href="components_buttons.html"><i class="ti-more"></i>Buttons</a></li>
            <li><a href="components_sliders.html"><i class="ti-more"></i>Sliders</a></li>
            <li><a href="components_dropdown.html"><i class="ti-more"></i>Dropdown</a></li>
            <li><a href="components_modals.html"><i class="ti-more"></i>Modal</a></li>
            <li><a href="components_nestable.html"><i class="ti-more"></i>Nestable</a></li>
            <li><a href="components_progress_bars.html"><i class="ti-more"></i>Progress Bars</a></li>
          </ul>
        </li>
		
		<li class="treeview">
          <a href="#">
            <i data-feather="credit-card"></i>
            <span>Cards</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
			<li><a href="card_advanced.html"><i class="ti-more"></i>Advanced Cards</a></li>
			<li><a href="card_basic.html"><i class="ti-more"></i>Basic Cards</a></li>
			<li><a href="card_color.html"><i class="ti-more"></i>Cards Color</a></li>
		  </ul>
        </li>  
		  
		<li class="treeview">
          <a href="#">
            <i data-feather="server"></i>
			<span>Tables</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="tables_simple.html"><i class="ti-more"></i>Simple tables</a></li>
            <li><a href="tables_data.html"><i class="ti-more"></i>Data tables</a></li>
          </ul>
        </li>
		  
        <li class="treeview">
          <a href="#">
            <i data-feather="pie-chart"></i>
            <span>Charts</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-right pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="charts_chartjs.html"><i class="ti-more"></i>ChartJS</a></li>
            <li><a href="charts_flot.html"><i class="ti-more"></i>Flot</a></li>
            <li><a href="charts_inline.html"><i class="ti-more"></i>Inline</a></li>	
            <li><a href="charts_morris.html"><i class="ti-more"></i>Morris</a></li>
            <li><a href="charts_peity.html"><i class="ti-more"></i>Peity</a></li>
            <li><a href="charts_chartist.html"><i class="ti-more"></i>Chartist</a></li>
          </ul>
        </li> 
        
      </ul>
    </section>
	
	<div class="sidebar-footer">
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Settings" aria-describedby="tooltip92529"><i class="ti-settings"></i></a>
		<!-- item-->
		<a href="mailbox_inbox.html" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i class="ti-email"></i></a>
		<!-- item-->
		<a href="javascript:void(0)" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i class="ti-lock"></i></a>
	</div>
  </aside>