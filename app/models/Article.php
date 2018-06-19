<?php
//include('../libraries/Database.php');
class Article{
    public $id;
    public $title;
    public $catagory;
    public $image;
    public $description;
    public $content;
    public $importance;
    public $source;
    public $releaseDate;

    public function __construct($id = null, $title = null,$catagory=null,$image=null ,$description=null,$content = null,$importance = 1,$source = null, $releaseDate = null){
        $this->id = $id;
        $this->title = $title;
        $this->catagory = $catagory;
        $this->image = $image;
        $this->description = $description;
        $this->content = $content;
        $this->importance = $importance;
        $this->source = $source;
        $this->releaseDate = $releaseDate;
      }

    // Get All Articles
    public static function getAllArticles(){
        $list = [];
        Database::getInstance()->query("SELECT * FROM `articles` ORDER BY `date` DESC;");
        $results = Database::getInstance()->resultset();
        foreach ($results as $article) {
            $list[] = new Article($article->id, $article->title,$article->catagory, $article->image, $article->description, $article->full_content,
                $article->importance,$article->source, $article->date );
        }
        return $list;

    }

    // Get Articles by their importance level
    public static function getArticlesByImportance(){
        $list = [];
        Database::getInstance()->query("SELECT * FROM `articles` ORDER BY `importance` ASC LIMIT 3;");
        $results = Database::getInstance()->resultset();
        foreach ($results as $article) {
            $list[] = new Article($article->id, $article->title,$article->catagory, $article->image, $article->description, $article->full_content,
                $article->importance,$article->source, $article->date );
        }
        return $list;

    }

    // Get Article By ID
    public static function getArticleById($data){
        Database::getInstance()->query("SELECT * FROM `articles` WHERE id = :title");
        Database::getInstance()->bind(':title', $data);
          $article = Database::getInstance()->single();

          return new Article($article->id, $article->title,$article->catagory, $article->image, $article->description, $article->full_content,
              $article->importance,$article->source, $article->date );
    }

    // Add an Article
    public function postArticle($data){
      // Prepare Query
        Database::getInstance()->query("INSERT INTO `articles` (`title`, `catagory`, `image`,`description`, `full_content`,`importance`, `source`, `date`) VALUES (:tit ,:cat ,:img,:des,:con ,:impo ,:src , NOW());");

      // Bind Values
        Database::getInstance()->bind(':tit', $data['title']);
        Database::getInstance()->bind(':cat', $data['catagory']);
        Database::getInstance()->bind(':img', $data['image']);
        Database::getInstance()->bind(':des', $data['description']);
        Database::getInstance()->bind(':con', $data['content']);
        Database::getInstance()->bind(':impo', $data['importance']);
        Database::getInstance()->bind(':src', $data['source']);
      
      //Execute
        if (Database::getInstance()->execute()) {
        return true;
      } else {
        return false;
      }
    }

    // Update Article ...
    //unfinished method
    public function updateArticle($data){
      // Prepare Query
        Database::getInstance()->query("UPDATE `articles` SET `title` = ':tit', `content` = ':con', `source` = 'src' WHERE `articles`.`id` = :id;");

      // Bind Values
        Database::getInstance()->bind(':id', $data['id']);
        Database::getInstance()->bind(':tit', $data['title']);
        Database::getInstance()->bind(':con', $data['content']);
        Database::getInstance()->bind(':src', $data['source']);
      
      //Execute
        if (Database::getInstance()->execute()) {
        return true;
      } else {
        return false;
      }
    }

    // Delete Post...
    //unfinished method
    public function deleteArticle($data)
    {
      // Prepare Query
          Database::getInstance()->query('DELETE FROM `articles` WHERE id = :id');

      // Bind Values
          Database::getInstance()->bind(':id', $data['id']);
      
      //Execute
          if (Database::getInstance()->execute()) {
        return true;
      } else {
        return false;
      }
    }
  }


