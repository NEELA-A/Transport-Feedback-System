// Select the form and response message elements 
const form = document.getElementById("feedbackForm");
const responseMsg = document.getElementById("responseMsg");

// Backend URL (Azure Web App)
const backendURL = "https://feedback-backend-app-na.azurewebsites.net/submit-feedback";

form.addEventListener("submit", async (event) => {
  event.preventDefault();

  // Get values from the form
  const name = document.getElementById("name").value.trim();
  const bus = document.getElementById("bus").value.trim();
  const rating = parseInt(document.getElementById("rating").value);
  const feedback = document.getElementById("feedback").value.trim();

  if (!name || !bus || !rating) {
    responseMsg.innerText = "Please fill in all required fields!";
    return;
  }

  try {
    const res = await fetch(backendURL, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        studentName: name,
        route: bus,
        rating: rating,
        comments: feedback,
      }),
    });

    const data = await res.json();

    if (res.ok) {
      responseMsg.innerText = data.message || "Feedback submitted successfully!";
      form.reset();
    } else {
      responseMsg.innerText = data.message || "Failed to submit feedback.";
    }
  } catch (err) {
    console.error("Error connecting to server:", err);
    responseMsg.innerText = "Error connecting to server. Please try again later.";
  }
});
