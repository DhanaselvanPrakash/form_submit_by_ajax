// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
import "controllers"

import $ from "jquery";
window.$ = $;
window.jQuery = $;

console.log("Works")

$(document).ready(()=>{
  // Add the todo 
  $("#add-btn").on('click', (e) => {
    e.preventDefault()
    var title = $("#title").val()
    var status = $('#status').val()
    var deadline = $('#deadline').val()
    const formData = { title: title, status: status, deadline: deadline }
    $.ajax({
      type: "POST",
      url: "/create",
      data: formData,
      success: () => { 
        console.log("success")
      },
      error: () => { console.log("Error") }
    })
  })

  // Delete the todo
  $('#delete-btn').on('click', (e) => {
    e.preventDefault()
    var id = $("#id").val()
    $.ajax({
      type: "DELETE",
      url: "/delete_todo",
      data: { id: id },
      success: () => { window.location.href = "/" },
      error: () => { alert("Error While Delete") }
    })
  })
})