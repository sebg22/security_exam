document.querySelectorAll(".comment-form").forEach((form) => {
  form.addEventListener("submit", async (e) => {
    e.preventDefault(); // Prevent the default form submit

    const formData = new FormData(form);
    const response = await fetch(form.action, {
      method: "POST",
      body: formData,
    });

    if (response.ok) {
      const newCommentHTML = await response.text();

      // Extract item ID from the form action URL
      const itemId = form.getAttribute("action").split("/")[2];

      // Use the item ID to target the correct comments container
      const commentsDiv = document.querySelector(`#comments-${itemId}`);
      commentsDiv.insertAdjacentHTML("beforeend", newCommentHTML);

      // Clear the textarea
      form.querySelector("textarea").value = "";
    } else {
      alert("Failed to add comment. It must be between 5 and 100 characters, and not use < > ' \".");
    }
  });
});
