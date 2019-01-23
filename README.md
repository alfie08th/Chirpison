
<%= form_for @new_post do |f| %>
    <%= f.text_area :body %>
    <select name="user_id">
      <%User.all.each do |user| %>
        <option value="<%=user.id %>">
            <%= user.username %>
        </option>
      <% end %>
    </select>
    <br>
    <%= f.submit "create" %>
<% end %>

    <div class="w3-card-4 w3-dark-grey instructor_card">
        <div class="w3-container w3-center instructor_center_card">
            <h3 id="instructor_username"><%= @instructor.username %></h3>
            <img id="instructor_image" src="https://tse4.mm.bing.net/th?id=OIP.2Y7fiAWyuhg-2Yj1H2r9CwHaHp&pid=15.1&P=0&w=300&h=300" alt="Avatar">

            <div class="w3-section">
                <button class="w3-button w3-green">Call</button>
                <button class="w3-button w3-red">Text</button>
            </div>
        </div>
    </div>

    <div id="cohort_big_div">
    <h1>Cohorts#index</h1>
    <p>Custom range slider:</p>
        <div class="columns">
            <% @cohorts.each do |cohort| %>
                <div class="cohort_column">
                    <img class="background_image" src="https://tse1.mm.bing.net/th?id=OIP.dGcKWEbX6A9GH5dlaQSQ6AHaFU&pid=15.1&P=0&w=219&h=158">
                    <div class="cohort_image_shadow"></div>
                    <h4 class="cohort_title"><%= cohort.start_date%></h4>
                    <h4 class="view_more"><a href="#">View</a></h4>
                </div>
            <% end %>
        </div>
</div>


        <div id="course_edit_button">
            <button class="ui red button"><i class="far fa-trash-alt"></i></button>
            <button class="ui twitter button"><i class="fas fa-edit"></i></button>
        </div>


                            <input id="home_search_input" type="text" placeholder="Search...">
                            <button id="home_search_button" class="button"><i class="search icon"></i></button>