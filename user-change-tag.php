<?php
  // Fetching all the Navbar Data
  require('./includes/nav.inc.php');
  
  // Checking if the User is logged in
  if(!isset($_SESSION['USER_LOGGED_IN'])) {
    // If user not logged in Redirect to login page along with a message
    alert("Please Login to Change your password");
    redirect('./user-login.php');
  }

  // Fetching user data from Session variable
  $user_id = $_SESSION['USER_ID'];

  // Whenever submit button is pressed
  if(isset($_POST['submit'])) {
   
    // Query to check if the user is registered
    $sql = "SELECT * FROM user 
            WHERE user_id = {$user_id}";

    // Running the Query
    $result = mysqli_query($con,$sql);
    
    // Returns the number of rows from the result retrieved.
    $rows = mysqli_num_rows($result);

    // If query has any result (records) => If any user with the email exists
    if($rows > 0) {

          
      
          //checking at least 1 tag is selected 
          if (!empty($_POST['tag_id'])) {
              $selected_tags = $_POST['tag_id'];

              //deleting all tags of users
              $delete_sql = "DELETE FROM user_tags WHERE user_id = '$user_id'";
              mysqli_query($con, $delete_sql);

              // Insert new tags selected tags
              foreach ($selected_tags as $tag_id) {
                  $tag_id = mysqli_real_escape_string($con, $tag_id);   
                  $insert_sql = "INSERT INTO user_tags (user_id, tag_id) VALUES ('$user_id', '$tag_id')";
                  $update_result=mysqli_query($con, $insert_sql);
              }

              //Insertion Query failed
              if(!$update_result) {
                alert("Sorry. Try again later !");
              }
              // If Query ran successfully
              else {
                // Redirect to the home page along with a message
                alert("Tags Updated !");
                redirect('./index.php');
              }
          }
          //
          else{
                alert("Select at least 1 tag");     
          }
        }
    // If no user with email exists =>  email is not registered
    else {
      alert("Try again Later!");
      redirect('./user-login.php');
    }
  }

?>
<!DOCTYPE html>
<html lang="en">
<style>
    .form-grid {
        display: grid;
        grid-template-columns: repeat(2, 1fr); /* 2 columns */
        gap: 10px;
    }
</style>
</html>

<div class="container p-2">
  <!-- Container to store the form div -->
  <div class="forms-container">
    <!-- Div for password change -->
    <div class="left">
      <div class="form-title">
        <h4>Change Tags</h4>
      </div>
      <div class="login-form-container">
        <!-- Form for Password change -->
        <form method="POST" class="login-form" id="change_pass_form">
          

        <div class="form-grid" >
        <label>Select tags</label><br>
        <?php

        $tag_sql = "SELECT tag_id FROM user_tags WHERE user_id='$user_id'"; 
        $result = mysqli_query($con, $tag_sql);

        $selected_tags = [];

          while ($tag_row = mysqli_fetch_assoc($result)) {
              $selected_tags[] = $tag_row['tag_id'];
          }
        $tag_sql = "SELECT tag_id, tag_name FROM tags ORDER BY tag_name ASC";
        $tag_res = mysqli_query($con, $tag_sql);

        while ($tag_data = mysqli_fetch_assoc($tag_res)) {
            $tag_id = $tag_data['tag_id'];
            $tag_name = $tag_data['tag_name'];
            $checked = in_array($tag_id, $selected_tags) ? "checked" : "";
            echo '
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="tag_id[]" value="'.$tag_id.'" id="tag_'.$tag_id.'" '.$checked.'>
                    <label class="form-check-label" for="tag_'.$tag_id.'">'.$tag_name.'</label>
                </div>
            ';
        }
        ?>
    </div>
        
    
        
          <div class="input-field">
            <button type="submit" name="submit">update_tags</button>
          </div>
        </form>
      </div>
      <!-- Div to display the errors from the form -->
      <div class="form-errors">
        <p class="errors" id="errors"></p>
      </div>
    </div>
  </div>
</div>

<!-- Script for form Validation -->
<script src="./assets/js/change-pass-validate.js"></script>

<?php

  // Fetching all the Footer Data
  require('./includes/footer.inc.php');
?>