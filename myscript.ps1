

# Define your API key and city
          $apiKey = '6adbcd8688ea7d06d0fa0bf2385ccab5'
          $city = 'New York'  # Replace with the desired city

          # Make the API request
          $url = "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey"
          $response = Invoke-RestMethod -Uri $url -Method Get

          # Display the JSON response
          Write-Host "Weather Response:"
          $response | ConvertTo-Json -Depth
