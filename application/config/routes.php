<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;




// Admin

$route['admin'] = 'login';
$route['admin/login'] = 'login/login';
$route['admin/logout'] = 'login/logout';

$route['admin/sendotp'] = 'login/sendotp';
$route['admin/checkotp'] = 'login/checkotp';
$route['admin/change_pass'] = 'login/change_pass';

$route['admin/dashboard'] = 'admin/dashboard';

$route['admin/admins'] = 'admin/admins';
$route['admin/admin-search-data'] = 'admin/admins/ajaxPaginationSearch';
$route['admin/admin-search-data/(:num)'] = 'admin/admins/ajaxPaginationSearch/$1';
$route['admin/add-admin'] = 'admin/admins/manageAdmin';
$route['admin/edit-admin/(:num)'] = 'admin/admins/manageAdmin/$1';
$route['admin/admin-save-data'] = 'admin/admins/saveData';
$route['admin/change-status-admin'] = 'admin/admins/statusChange';
$route['admin/delete-admin'] = 'admin/admins/deleteData';


$route['admin/users'] = 'admin/users';
$route['admin/user-search-data'] = 'admin/users/ajaxPaginationSearch';
$route['admin/user-search-data/(:num)'] = 'admin/users/ajaxPaginationSearch/$1';
$route['admin/add-user'] = 'admin/users/manageUser';
$route['admin/edit-user/(:num)'] = 'admin/users/manageUser/$1';
$route['admin/user-save-data'] = 'admin/users/saveData';
$route['admin/change-status-user'] = 'admin/users/statusChange';
$route['admin/delete-user'] = 'admin/users/deleteData';

$route['admin/quotes'] = 'admin/quotes';
$route['admin/quote-search-data'] = 'admin/quotes/ajaxPaginationSearch';
$route['admin/quote-search-data/(:num)'] = 'admin/quotes/ajaxPaginationSearch/$1';
$route['admin/change-status-quote'] = 'admin/quotes/statusChange';
$route['admin/categories'] = 'admin/categories';
$route['admin/category-search-data'] = 'admin/categories/ajaxPaginationSearch';
$route['admin/category-search-data/(:num)'] = 'admin/categories/ajaxPaginationSearch/$1';
$route['admin/add-category'] = 'admin/categories/manageCategory';
$route['admin/edit-category/(:any)'] = 'admin/categories/manageCategory/$1';
$route['admin/category-save-data'] = 'admin/categories/saveData';
$route['admin/change-status-category'] = 'admin/categories/statusChange';
$route['admin/delete-category'] = 'admin/categories/deleteData';
$route['admin/change-popular-category'] = 'admin/categories/popularCategoryChange';
$route['admin/category-alias'] = 'admin/categories/AliasManage';


$route['admin/subcategories'] = 'admin/subcategories';
$route['admin/subcategory-search-data'] = 'admin/subcategories/ajaxPaginationSearch';
$route['admin/subcategory-search-data/(:num)'] = 'admin/subcategories/ajaxPaginationSearch/$1';
$route['admin/add-subcategory'] = 'admin/subcategories/manageSubCategory';
$route['admin/edit-subcategory/(:any)'] = 'admin/subcategories/manageSubCategory/$1';
$route['admin/subcategory-save-data'] = 'admin/subcategories/saveData';
$route['admin/change-status-subcategory'] = 'admin/subcategories/statusChange';
$route['admin/delete-subcategory'] = 'admin/subcategories/deleteData';
$route['admin/subcategory-alias'] = 'admin/subcategories/AliasManage';



// $route['admin/blogs'] = 'admin/blogs';
// $route['admin/blog-search-data'] = 'admin/blogs/ajaxPaginationSearch';
// $route['admin/blog-search-data/(:num)'] = 'admin/blogs/ajaxPaginationSearch/$1';
// $route['admin/add-blog'] = 'admin/blogs/manageBlog';
// $route['admin/edit-blog/(:any)'] = 'admin/blogs/manageBlog/$1';
// $route['admin/blog-save-data'] = 'admin/blogs/saveData';
// $route['admin/change-status-blog'] = 'admin/blogs/statusChange';
// $route['admin/delete-blog'] = 'admin/blogs/deleteData';
// $route['admin/save-blog-ordering'] = 'admin/blogs/saveOrdering';
// $route['admin/change-featured-blog'] = 'admin/blogs/changeFeaturedBlog';

$route['admin/forms'] = 'admin/forms';
$route['admin/form-search-data'] = 'admin/forms/ajaxPaginationSearch';
$route['admin/form-search-data/(:num)'] = 'admin/forms/ajaxPaginationSearch/$1';
$route['admin/add-form'] = 'admin/forms/manage';
$route['admin/edit-form/(:any)'] = 'admin/forms/manage/$1';
$route['admin/form-save-data'] = 'admin/forms/saveData';
$route['admin/change-status-form'] = 'admin/forms/statusChange';
$route['admin/delete-form'] = 'admin/forms/deleteData';


$route['admin/testimonials'] = 'admin/testimonials';
$route['admin/testimonial-search-data'] = 'admin/testimonials/ajaxPaginationSearch';
$route['admin/testimonial-search-data/(:num)'] = 'admin/testimonials/ajaxPaginationSearch/$1';
$route['admin/add-testimonial'] = 'admin/testimonials/manageTestimonial';
$route['admin/edit-testimonial/(:any)'] = 'admin/testimonials/manageTestimonial/$1';
$route['admin/testimonial-save-data'] = 'admin/testimonials/saveData';
$route['admin/change-status-testimonial'] = 'admin/testimonials/statusChange';
$route['admin/delete-testimonial'] = 'admin/testimonials/deleteData';





$route['admin/services'] = 'admin/services';
$route['admin/service-search-data'] = 'admin/services/ajaxPaginationSearch';
$route['admin/service-search-data/(:num)'] = 'admin/services/ajaxPaginationSearch/$1';
$route['admin/add-service'] = 'admin/services/manage';
$route['admin/edit-service/(:any)'] = 'admin/services/manage/$1';
$route['admin/service-save-data'] = 'admin/services/saveData';
$route['admin/change-status-service'] = 'admin/services/statusChange';
$route['admin/delete-service'] = 'admin/services/deleteData';


$route['admin/pages'] = 'admin/pages';
$route['admin/page-search-data'] = 'admin/pages/ajaxPaginationSearch';
$route['admin/page-search-data/(:num)'] = 'admin/pages/ajaxPaginationSearch/$1';
$route['admin/add-page'] = 'admin/pages/managePage';
$route['admin/edit-page/(:any)'] = 'admin/pages/managePage/$1';
$route['admin/page-save-data'] = 'admin/pages/saveData';
$route['admin/page-alias'] = 'admin/pages/AliasManage';
$route['admin/delete-page'] = 'admin/pages/deleteData';


$route['admin/seo/(:any)/(:num)'] = 'admin/seoes/SeoesManage';
$route['admin/seo-save-data'] = 'admin/seoes/saveData';





$route['admin/banners'] = 'admin/banners';
$route['admin/banner-search-data'] = 'admin/banners/ajaxPaginationSearch';
$route['admin/banner-search-data/(:num)'] = 'admin/banners/ajaxPaginationSearch/$1';
$route['admin/add-banner'] = 'admin/banners/BannersManage';
$route['admin/edit-banner/(:any)'] = 'admin/banners/BannersManage/$1';
$route['admin/banner-save-data'] = 'admin/banners/saveData';
$route['admin/change-status-banner'] = 'admin/banners/statusChange';
$route['admin/delete-banner'] = 'admin/banners/deleteData';
$route['admin/banners/(:any)/(:num)'] = 'admin/banners/BannersManage';

$route['admin/menu-settings'] = 'admin/menusettings';
$route['admin/menu-save-data'] = 'admin/menusettings/saveData';
$route['admin/get-menu-data'] = 'admin/menusettings/getData';



$route['admin/faqs'] = 'admin/faqs';
$route['admin/faq-search-data'] = 'admin/faqs/ajaxPaginationSearch';
$route['admin/faq-search-data/(:num)'] = 'admin/faqs/ajaxPaginationSearch/$1';
$route['admin/add-faq'] = 'admin/faqs/manageFaq';
$route['admin/edit-faq/(:any)'] = 'admin/faqs/manageFaq/$1';
$route['admin/faq-save-data'] = 'admin/faqs/saveData';
$route['admin/change-status-faq'] = 'admin/faqs/statusChange';
$route['admin/delete-faq'] = 'admin/faqs/deleteData';
$route['admin/save-faq-ordering'] = 'admin/faqs/saveOrdering';



$route['admin/gallery/blog/(:any)'] = 'admin/gallerys/manageGallery/$1';
$route['admin/gallery-save-data'] = 'admin/gallerys/SaveData';
$route['admin/gallery-get-data/(:any)/(:num)'] = 'admin/gallerys/GateData/$1';
$route['admin/gallery-remove-data/(:any)'] = 'admin/gallerys/RemoveData';


$route['admin/video-url/blog/(:any)'] = 'admin/videourls/manageVideoUrl/$1';
$route['admin/video-save-data'] = 'admin/videourls/saveData';
$route['admin/ajax-video-div-load'] = 'admin/videourls/ajaxLoadDiv';


$route['admin/emails'] = 'admin/emails';
$route['admin/edit-search-data'] = 'admin/emails/ajaxPaginationSearch';
$route['admin/edit-search-data/(:num)'] = 'admin/emails/ajaxPaginationSearch/$1';
$route['admin/edit-email/(:num)'] = 'admin/emails/manageEmail/$1';
$route['admin/email-save-data'] = 'admin/emails/saveData';
$route['admin/site-settings'] = 'admin/sitesettings/manageSettings';
$route['admin/site-settings-save-data'] = 'admin/sitesettings/saveData';

$route['admin/run-cron'] = 'admin/cron/remove_data';

$route['otp-save-data'] = 'front/appointment/saveOtp';
$route['appointment-save-data'] = 'front/appointment/saveAppointmentData';
$route['review-save-data'] = 'front/appointment/saveReview';


$route['get-product-type'] = 'front/appointment/getPro';
$route['contact-save-data'] = 'home/saveContactData';
$route['service/(:any)'] = 'home/getService/$1';
$route['(:any)'] = 'home/getAny/$1';