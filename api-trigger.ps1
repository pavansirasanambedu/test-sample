# Define your API endpoint URL
$apiUrl = "https://httpbin.org/get"

# Define the request headers (if needed)
$headers = @{
    "Content-Type" = "application/json"
    # Add any other headers here if required
}

# Send a POST request to the API endpoint
$response = Invoke-RestMethod -Uri "https://mocktarget.apigee.net/json" -Method 'GET' -ContentType "application/json" -ErrorAction:Stop -TimeoutSec 60

# Print the response (optional)
Write-Host "API Response:"
Write-Host $response

# Check if the API call was successful (you can customize this condition)
if ($response.Status -eq "Success") {
    Write-Host "API call was successful."
    exit 0  # Mark the workflow as successful
} else {
    Write-Host "API call failed."
    exit 1  # Mark the workflow as failed
}
