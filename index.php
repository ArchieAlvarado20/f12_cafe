<?php
// Optional: dito mo pwedeng ilagay ang PHP logic mo sa login, session, at iba pa.
// Example: session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta and Title -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>F21 Cafe POS</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700;800&display=swap" rel="stylesheet">

    <link rel="icon" href="logo.png" type="image/png" />

    <!-- ✅ Linked CSS -->
    <link rel="stylesheet" href="style.css?v=<?php echo time(); ?>">

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
     <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

</head>
<body>
    
    <!-- ====================== LOGIN PAGE ====================== -->
    <div id="login-screen">
        <div class="login-container">
            <div class="logo-circle">
                <img src="logo.png" alt="F21 Cafe Logo">
            </div>
            <h2>F21 CAFE</h2>
            <p class="subtitle-text">EST 2023</p>

            <!-- Login Fields -->
            <input type="text" id="user_name" placeholder="Username" required>
            <input type="password" id="pass_word" placeholder="Password" required>
            <p class="error-text" id="login_msg"></p>

            <button class="login-btn" onclick="doLogin()">Log In</button>

            <!-- Demo Account Info -->
            <p class="demo-info">
                <strong>Demo Accounts:</strong><br>
                Owner: owner / admin123<br>
                Staff: staff / staff123
            </p>
        </div>
    </div>
    
    <!-- ====================== MAIN APP CONTAINER ====================== -->
    <div id="app-container" style="display: none;">

        <!-- ====================== OWNER PANEL ====================== -->
        <div class="owner-panel" id="owner_panel" style="display: none;">

            <!-- SIDE MENU -->
            <aside class="side-menu" id="side_menu">
                <div class="toggle-wrapper">
                    <button class="menu-toggle" onclick="toggleMenu()">◄</button>
                </div>
                
                <!-- Brand Section -->
                <div class="brand-section">
                    <div class="brand-name">F21 CAFE</div>
                    <div class="brand-year">EST 2023</div>
                </div>
                
                <div class="menu-header">
                    <span class="header-text">ADMIN PANEL</span>
                </div>
                
                <!-- Menu List -->
                <ul class="menu-list">
                    <li class="menu-option">
                        <a class="menu-link active" onclick="switchScreen('dashboard')">
                            <span class="link-icon">📊</span>
                            <span class="link-label">Dashboard</span>
                        </a>
                    </li>
                    <li class="menu-option">
                        <a class="menu-link" onclick="switchScreen('pos')">
                            <span class="link-icon">🛒</span>
                            <span class="link-label">POS System</span>
                        </a>
                    </li>
                    <li class="menu-option">
                        <a class="menu-link" onclick="switchScreen('sales')">
                            <span class="link-icon">💰</span>
                            <span class="link-label">Sales Report</span>
                        </a>
                    </li>
                    <li class="menu-option">
                        <a class="menu-link" onclick="switchScreen('inventory')">
                            <span class="link-icon">📦</span>
                            <span class="link-label">Inventory</span>
                        </a>
                    </li>
                    <li class="menu-option" style="margin-top: 2rem; border-top: 1px solid rgba(255,255,255,0.1); padding-top: 1rem;">
                        <a class="menu-link" onclick="doLogout()">
                            <span class="link-icon">🚪</span>
                            <span class="link-label">Logout</span>
                        </a>
                    </li>
                </ul>
            </aside>

            <!-- ====================== MAIN CONTENT AREA ====================== -->
            <div class="content-area">

                <!-- DASHBOARD -->
                <div id="dashboard-screen" class="screen-view" style="display: none;">
                    <div class="stats-wrapper">
                        <div class="stat-box" onclick="switchScreen('sales');show_daily_Sales()"  style="cursor: pointer;">
                            <h3>Today's Sales</h3>
                            <div class="stat-number" id="today_sales">₱0.00</div>
                            <div class="stat-desc">Total Revenue</div>
                        </div>
                        <div class="stat-box">
                            <h3>Transactions</h3>
                            <div class="stat-number" id="total_orders">0</div>
                            <div class="stat-desc">Orders Completed</div>
                        </div>
                        <div class="stat-box">
                            <h3>Average Order</h3>
                            <div class="stat-number" id="avg_order">₱0.00</div>
                            <div class="stat-desc">Per Transaction</div>
                        </div>
                        <div class="stat-box">
                            <h3>Low Stock Items</h3>
                            <div class="stat-number" id="low_stock_count">0</div>
                            <div class="stat-desc">Need Restock</div>
                        </div>
                    </div>

                    <div class="recent-sales-section">
                        <h2 style="margin-bottom: 1rem; color: #000000;">Recent Transactions</h2>
                        <div id="recent_transactions"></div>
                    </div>

                    <!-- CHART CARD -->
                            <div class="chart-card">
                            <div class="chart-header">
                                <h2 style="margin-bottom: 1rem;margin-left: 1rem;color: #000000;">Sales Overview</h2>

                                <select id="salesFilter" onchange="updateSalesChart()" >
                                <option value="day" selected>Today</option>
                                <option value="week">This Week</option>
                                <option value="month">This Month</option>
                                <option value="year">This Year</option>
                                </select>
                            </div>

                            <canvas id="salesChart"></canvas>
                            </div>
                </div>

                <!-- SALES REPORT -->
                <div id="sales-screen" class="screen-view" style="display: none;">
                    <div class="section-header">
                        <h2 style="color: #000000;">Sales Report</h2>
                        <p style="color: #666666;">Complete transaction history and analytics</p>
                        <button class="add-btn" onclick="show_daily_Sales()" id="today-sales-btn">Today Sales</button>
                        <button class="add-btn" onclick="show_product_Sales()" id="today-sales-btn">Product Reports</button>
                    </div>
                      
                    <div class="table-wrapper" id="salesDiv" style="display: block;">
                        <div style="display: flex;">
                           <h2 style="margin-bottom: 1rem;margin-right:1rem">Today Sales Total: </h2>
                           <h2 id="today-sales-total">00.00</h2>
                        </div>
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Date & Time</th>
                                        <th>Items</th>
                                        <th>Payment</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody id="sales_list"></tbody>
                                <!-- <td><h3 style="margin-bottom: 1rem;margin-right:1rem">Today Sales Total: </h3></td>
                                <td></td>   
                                <td></td>
                                <td> <h3 id="today-sales-total">00.00</h3></td> -->
                            </table> 
                    </div>
                        
                        <div class="table-wrapper" id="productDiv" style="display: none;">
                             <div style="display: flex;">
                                <h2 style="margin-bottom: 1rem;margin-right:1rem">Product Reports: </h2>
                            </div>
                            <div class="input-group" style="width: 100%;display:flex">
                                <input
                                    type="text"
                                    id="search_product_name"
                                    placeholder="Search inventory name..."
                                    oninput="handleSearch(this)"
                                    >

                                     <select id="product_filter" onchange="applyProductFilter()">
                                        <option selected hidden>Select Category</option>
                                        <option value="">All Categories</option>
                                        <option value="Salad">Salad</option>
                                        <option value="Snacks">Snacks</option>
                                        <option value="Pasta">Pasta</option>
                                        <option value="Sandwich">Sandwich</option>
                                        <option value="Cake">Cake</option>
                                        <option value="Coffee">Coffee</option>
                                        <option value="Frappe">Frappe</option>
                                        <option value="Non-Coffee">Non-Coffee</option>
                                        <option value="Tea">Tea</option>
                                        <option value="Silog Meals">Silog Meals</option>
                                    </select>
                                </div>
                            <table class="data-table">
                                <thead>
                                    <tr>
                                        <th>Item Name</th>
                                        <th>Category</th>
                                        <th>Price (₱)</th>
                                        <th>Reports</th>
                                    </tr>
                                </thead>
                                <tbody id="product_report"></tbody>
                            </table> 
                    </div>
            </div>
                        
                
     <!-- ====================== PRODUCT REPORT MODAL ====================== -->
    <div id="product_report_modal" class="popup">
        <div class="popup-box-archived">
            <div class="popup-header">
                <h2 id="popup_titles"></h2>
                <span class="close-btn" onclick="hideModalProductReport()">&times;</span>
            </div>
                
                   <div class="table-wrapper">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Item Name</th>
                                <th>Price</th>
                                <th>Sales</th>
                                <th>Sold</th>
                                <th>Range Date</th>
                            </tr>
                        </thead>
                        <tbody id="product-reports"></tbody>
                    </table>
                         <!-- CHART CARD -->
                            <div class="chart-card">
                            <div class="chart-header">
                                <h2 style="margin-bottom: 1rem;margin-left: 1rem;color: #000000;">Product Sales Overview</h2>
                            </div>

                          <canvas id="productLineChart" height="80"></canvas>
                            </div>
                </div>
            </div>
             
        </div>
    
                <!-- INVENTORY MANAGEMENT -->
                <div id="inventory-screen" class="screen-view" style="display: none;">
                    <div class="section-header">
                        <div>
                            <h2 style="color: #000000;">Inventory Management</h2>
                            <p style="color: #666666;">Manage your menu items and stock levels</p>
                        </div>
                        <button class="add-btn" onclick="showAddModal()">+ Add New Item</button>
                        <button class="add-btn" onclick="showAddModalArchived()">Archived</button>
                    </div>

                                <div class="input-group" style="width: 100%;display:flex">
                                <input
                                    type="text"
                                    id="search_inventory_name"
                                    placeholder="Search inventory name..."
                                    oninput="handleSearch(this)"
                                    >

                                     <select id="category_filter" onchange="applyCategoryFilter()">
                                        <option selected hidden>Select Category</option>
                                        <option value="">All Categories</option>
                                        <option value="Salad">Salad</option>
                                        <option value="Snacks">Snacks</option>
                                        <option value="Pasta">Pasta</option>
                                        <option value="Sandwich">Sandwich</option>
                                        <option value="Cake">Cake</option>
                                        <option value="Coffee">Coffee</option>
                                        <option value="Frappe">Frappe</option>
                                        <option value="Non-Coffee">Non-Coffee</option>
                                        <option value="Tea">Tea</option>
                                        <option value="Silog Meals">Silog Meals</option>
                                    </select>
                                </div>

                                   
                <div class="table-wrapper">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Item Name</th>
                                <th>Category</th>
                                <th>Price (₱)</th>
                                <th>Stock</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody id="inventory_list"></tbody>
                    </table>
                </div>
                </div>
            </div>
            
        </div>

        <!-- MOBILE MENU BUTTON -->
        <button class="mobile-menu-btn" onclick="toggleMobileMenu()">☰</button>

        <!-- STAFF NAVIGATION BAR -->
        <nav class="top-nav" id="staff_nav" style="display: none;">
            <div class="nav-wrapper">
                <div class="nav-brand">
                    <div class="brand-title">F21 CAFE</div>
                    <div class="brand-sub">EST 2023</div>
                </div>
                
                <div class="nav-actions">
                    <span class="current-user" id="user_display"></span>
                    <button class="logout-btn" onclick="doLogout()">Logout</button>
                </div>
            </div>
        </nav>

        <!-- ====================== POS SYSTEM ====================== -->
        <div id="pos-screen" class="screen-view">
            <div class="page-container">
                <div class="pos-wrapper">
                    <div class="pos-layout">

                        <!-- PRODUCT LIST -->
                        <div class="products-section">
                            <div class="content-box">
                                <div class="box-title">Menu Items</div>
                                <div class="box-content">

                                    <!-- Filter Buttons -->
                                    <div id="filter_buttons">
                                        <button class="filter-btn active" onclick="filterProducts('All', this)">All</button>
                                        <button class="filter-btn" onclick="filterProducts('Salad', this)">Salad</button>
                                        <button class="filter-btn" onclick="filterProducts('Snacks', this)">Snacks</button>
                                        <button class="filter-btn" onclick="filterProducts('Pasta', this)">Pasta</button>
                                        <button class="filter-btn" onclick="filterProducts('Sandwich', this)">Sandwich</button>
                                        <button class="filter-btn" onclick="filterProducts('Cake', this)">Cake</button>
                                        <button class="filter-btn" onclick="filterProducts('Coffee', this)">Coffee</button>
                                        <button class="filter-btn" onclick="filterProducts('Frappuccino', this)">Frappe</button>
                                        <button class="filter-btn" onclick="filterProducts('Non-Coffee', this)">Non-Coffee</button>
                                        <button class="filter-btn" onclick="filterProducts('Tea', this)">Tea</button>
                                        <button class="filter-btn" onclick="filterProducts('Silog Meals', this)">Silog Meals</button>
                                    </div>

                                    <!-- Search Box -->
                                    <input type="text" id="search_box" class="search-field" placeholder="Search menu by name..." onkeyup="searchProducts()">

                                    <!-- Product Display -->
                                    <div id="products_list"></div>
                                </div>
                            </div>
                        </div>

                        <!-- ORDER SUMMARY -->
                        <div class="cart-section">
                            <div class="content-box">
                                <div class="box-title">Order Summary</div>
                                <div class="box-content">
                                    <div id="order_items">
                                        <p class="placeholder-text">Cart is empty.</p>
                                    </div>
                                    
                                        <!-- Payment Method -->
                                    <label for="payment_type" class="input-label">Payment Method</label>
                                    <select class="select-field" id="payment_type" onchange="handlePaymentMethod()">
                                        <option value="Cash">Cash</option>
                                        <option value="Gcash">Gcash</option>
                                        <option value="Paymaya">Paymaya</option>
                                    </select>

                                    <div id="total_section">
                                        <span style="font-weight: 700; font-size: 1.5rem;">TOTAL:</span>
                                        <span id="order_total">₱0.00</span>
                                    </div>

                                        <!-- CASH PANEL (HIDDEN BY DEFAULT) -->
                                    <div id="cash_section" style="display:block; margin-top: 0.8rem;">
                                        <label class="input-label">Cash Received</label>
                                        <input
                                            type="number"
                                            id="cash_received"
                                            class="search-field"
                                            min="0"
                                            placeholder="Enter cash amount"
                                             oninput="updateCashComputation()"
                                        >
                                    <div id="total_section">
                                        <span style="font-weight: 700; font-size: 1.5rem;">CHANGE:</span>
                                        <span id="cash_change" style="font-weight: 700; font-size: 1.5rem;">₱0.00</span>
                                    </div>
                                    </div>
                                
                                

                                    <div id="notification"></div>
                                    <button   class="primary-btn"
                                                id="checkout_btn"
                                                onclick="processCheckout()">Checkout Order</button>
                                    <button class="secondary-btn" style="width: 100%; margin-top: 0.7rem;" onclick="emptyCart()">Clear Cart</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ====================== ITEM ADD / EDIT MODAL ====================== -->
    <div id="item_modal" class="popup">
        <div class="popup-box">
            <div class="popup-header">
                <h2 id="popup_title">Add New Item</h2>
                <span class="close-btn" onclick="hideModal()">&times;</span>
            </div>
            <form id="item_form" onsubmit="submitItem(event)">
                <input type="hidden" id="editing_id">
                <div class="input-group">
                    <label for="item_name">Item Name</label>
                    <input type="text" id="item_name" required>
                </div>
                <div class="input-group">
                    <label for="item_cat">Category</label>
                    <select id="item_cat" required>
                        <option value="">Select Category</option>
                        <option value="Salad">Salad</option>
                        <option value="Snacks">Snacks</option>
                        <option value="Pasta">Pasta</option>
                        <option value="Sandwich">Sandwich</option>
                        <option value="Cake">Cake</option>
                        <option value="Coffee">Coffee</option>
                        <option value="Frappuccino">Frappuccino</option>
                        <option value="Frappe">Frappe</option>
                        <option value="Non-Coffee">Non-Coffee</option>
                        <option value="Tea">Tea</option>
                        <option value="Silog Meals">Silog Meals</option>
                    </select>
                </div>
                <div class="input-group">
                    <label for="item_price">Price (₱)</label>
                    <input type="number" id="item_price" min="0" step="0.01" required>
                </div>
                <div class="input-group">
                    <label for="item_qty">Stock Quantity</label>
                    <input type="number" id="item_qty" min="0" required>
                </div>
                <div class="popup-buttons">
                    <button type="button" class="cancel-btn" onclick="hideModal()">Cancel</button>
                    <button type="submit" class="save-btn">Save Item</button>
                </div>
            </form>
        </div>
    </div>

     <!-- ====================== ARCHIVED MODAL ====================== -->
    <div id="archived_modal" class="popup">
        <div class="popup-box-archived">
            <div class="popup-header">
                <h2 id="popup_titles">Add New Item</h2>
                <span class="close-btn" onclick="hideModalArchived()">&times;</span>
            </div>
                <div class="input-group" style="width: 100%;display:flex" >
                       <input
                                        type="text"
                                        id="archived_search_box"
                                        placeholder="Search archived item by name..."
                                        oninput="handleSearch(this)"
                                        >
                           <select id="archived_category_filter" onchange="applyArchivedCategoryFilter()">
                                <option value="">All Categories</option>
                            </select>
                        </div>
            <div class="table-wrapper-archived">
                  <table class="data-table">
                        <thead>
                            <tr>
                                <th>Item Name</th>
                                <th>Category</th>
                                <th>Price (₱)</th>
                                <th>Deleted at</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="archived_list"></tbody>
                    </table>
            </div>
             
        </div>
    </div>

    <!-- ====================== RECEIPT POPUP ====================== -->
   <div id="receipt_modal" class="receipt-popup">
  <div class="receipt-box">
    <div class="receipt-print" id="print_area">

      <!-- ===== RECEIPT HEADER ===== -->
      <div class="receipt-top">
        <h2>F21 CAFE</h2>
        <p>Food & Beverage Services</p>
        <p>123 Sample Street, Brgy. Demo, Quezon City</p>
        <p>Tel: 0912-345-6789</p>

        <hr>

        <p><strong>VAT REG TIN:</strong> 000-000-000-000</p>
        <p><strong>Accreditation No:</strong> ACC-123456789</p>
        <p><strong>Date Issued:</strong> <span id="receipt_time"></span></p>
        <p><strong>OR No:</strong> 00001234</p>

        <hr>
      </div>

      <!-- ===== ITEMS ===== -->
      <div class="receipt-lines" id="receipt_lines"></div>

      <!-- ===== TOTALS ===== -->
      <div class="receipt-bottom">
        <div class="total-line">
          <span>Subtotal:</span>
          <span id="receipt_sub">₱0.00</span>
        </div>

        <div class="total-line">
          <span>VATable Sales:</span>
          <span id="receipt_vatable">₱0.00</span>
        </div>

        <div class="total-line">
          <span>VAT (12%):</span>
          <span id="receipt_vat">₱0.00</span>
        </div>

        <div class="total-line bold-line">
          <span>TOTAL:</span>
          <span id="receipt_total">₱0.00</span>
        </div>

        <div class="total-line bold-line" id="receipt_payment_row">
          <span>PAYMENT:</span>
          <span id="receipt_payment">₱0.00</span>
        </div>

        <div class="total-line bold-line" id="receipt_change_row">
          <span>CHANGE:</span>
          <span id="receipt_change">₱0.00</span>
        </div>

        <div class="total-line">
          <span>Payment Method:</span>
          <span id="receipt_method"></span>
        </div>
      </div>

      <!-- ===== FOOTER ===== -->
      <div class="receipt-end">
        <hr>
        <p><strong>THIS SERVES AS YOUR OFFICIAL RECEIPT</strong></p>
        <p>Thank you for dining with us!</p>
        <p>Please keep this receipt for your reference.</p>

        <br>

        <p>POS Provider: Sample POS System</p>
        <p>Permit to Use No: PTU-000000</p>
        <p>Date Issued: 01/01/2024</p>
        <p>Valid Until: 12/31/2028</p>

        <br>

        <p>*** ORDER COMPLETED ***</p>
      </div>

    </div>

    <!-- ACTIONS -->
    <div class="receipt-actions">
      <button class="print-btn" onclick="doPrint()">🖨️ Print</button>
      <button class="close-btn" onclick="hideReceipt()">Close</button>
    </div>
  </div>
</div>


    <!-- ✅ Linked JS -->
     
     <script>
/* Immediately check server session and restore UI */
fetch('get_session.php?t=' + new Date().getTime())
  .then(r => r.json())
  .then(data => {
    if (data.success) {
      // Build the same structure your style.js expects:
      loggedInUser = {
        id: data.id,
        username: data.username,
        role: data.role.charAt(0).toUpperCase() + data.role.slice(1)
      };

      // Show app, hide login screen
      document.getElementById('login-screen').style.display = 'none';
      document.getElementById('app-container').style.display = 'block';

      // Setup UI according to role (mirror what doLogin does)
      const ownerPanel = document.getElementById('owner_panel');
      const posView = document.getElementById('pos-screen');
      const staffNav = document.getElementById('staff_nav');

      // Initialize menu and sales like after login
      setupMenu();
      fetchSalesHistory().then(() => {
        if (loggedInUser.role === 'Owner') {
          ownerPanel.style.display = 'flex';
          posView.style.display = 'none';
          staffNav.style.display = 'none';
          switchScreen('dashboard');
        } else {
          ownerPanel.style.display = 'none';
          staffNav.style.display = 'block';
          posView.style.display = 'block';
          document.getElementById('user_display').textContent = loggedInUser.role;
          switchScreen('pos');
        }
      });
    } else {
      // ensure initial state shows login
      document.getElementById('app-container').style.display = 'none';
      document.getElementById('login-screen').style.display = 'flex';
    }
  })
  .catch(err => {
    console.error('Session check failed', err);
  });
</script>


    <script src="style.js?v=<?php echo time(); ?>"></script>
   
</body>
</html>
