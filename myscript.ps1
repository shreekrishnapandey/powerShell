Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force

# Define your API key and city
          $apiKey = '94cb7f7298ab35b30f2734eae3ca6e73'
          $city = 'New York'  # Replace with the desired city

          # Make the API request
          $url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey"
          $response = Invoke-RestMethod -Uri $url -Method Get

          # Display the JSON response
          Write-Host "Weather Response:"
          $response | ConvertTo-Json -Depth
