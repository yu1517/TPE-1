<?php
require_once 'app/models/home.model.php';
require_once 'app/views/home.view.php';

class HomeController{

    private $view;
    
    function __construct(){
        $this->model = new HomeModel();
        $this->view = new HomeView();
    }

    function showHome(){
        $books = $this->model->getAllBooksHome();
        $this->view->showHome($books);
    }
}