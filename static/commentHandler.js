document.querySelectorAll(".comment-form").forEach(form => {
    form.addEventListener('submit', async (e) => {
        e.preventDefault(); // Prevent the default form submit

        const formData = new FormData(form);
        const response = await fetch(form.action, {
            method: 'POST',
            body: formData,
        });

        if (response.ok) {
            const newCommentHTML = await response.text();
            const commentsDiv = form.previousElementSibling.querySelector('div');
            commentsDiv.insertAdjacentHTML('beforeend', newCommentHTML);

            // Clear the textarea
            form.querySelector('textarea').value = '';
        } else {
            alert("Failed to add comment. Please try again.");
        }
    });
});
