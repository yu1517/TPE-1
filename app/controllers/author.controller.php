<?php
require_once './app/models/author.model.php';
require_once './app/views/author.view.php';
require_once './app/helper/auth.helper.php';

class AuthorController{
    private $model;
    private $view;

    function __construct(){
        //intancion el modelo y la vista de la lista author
        $this->model = new AuthorModel();
        $this->view = new AuthorView();
        $authHelper = new AuthHelper();
        $authHelper->checkLoggedIn();
    }

    function showAuthor(){
        //obtiene las tareas del modelo
        $authors = $this->model->getAllAuthors();
        //actualizo la vista
        $this->view->showAuthors($authors);
    }

    function addAuthor() {   
    $name = $_POST['name'];
    $nationality = $_POST['nationality'];
    $birthdate = $_POST['birthdate'];
    $id = $this->model->insertAuthor($name, $nationality, $birthdate);

    header("Location: " . BASE_URL . 'author'); 
    }

    function  showEditAuthor($id){
    $authors = $this->model->getRegisterAuthorById2($id);
    $this->view->showEditAuthor($authors);
    }

    function insertEditAuthor($id){
    if((isset($_POST['name'])&&isset($_POST['nationality'])&&isset($_POST['birthdate']))&&!empty($_POST['name'])&&!empty($_POST['nationality'])&&!empty($_POST['birthdate'])){      
    $name = $_POST['name'];
    $nationality = $_POST['nationality'];
    $birthdate = $_POST['birthdate'];

        $this->model->insertEditAuthor($name, $nationality, $birthdate, $id);
    }
    }

    function deleteAuthor($id) {
        $this->model->deleteAuthorById($id);
    }
}
