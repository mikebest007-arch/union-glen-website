// Netlify Function to handle form submissions
// Saves to a JSON file and can email notifications

exports.handler = async (event, context) => {
  // Enable CORS
  const headers = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'Content-Type',
    'Access-Control-Allow-Methods': 'POST, OPTIONS'
  };

  // Handle preflight
  if (event.httpMethod === 'OPTIONS') {
    return { statusCode: 200, headers, body: '' };
  }

  if (event.httpMethod !== 'POST') {
    return {
      statusCode: 405,
      headers,
      body: JSON.stringify({ error: 'Method not allowed' })
    };
  }

  try {
    // Parse form data
    const params = new URLSearchParams(event.body);
    const data = {
      timestamp: new Date().toISOString(),
      firstName: params.get('firstName') || '',
      lastName: params.get('lastName') || '',
      email: params.get('email') || '',
      phone: params.get('phone') || '',
      buyerType: params.get('buyerType') || '',
      budget: params.get('budget') || '',
      broker: params.get('broker') || ''
    };

    // Log to console (visible in Netlify function logs)
    console.log('New Registration:', JSON.stringify(data));

    // TODO: Add email notification here using SendGrid, SES, etc.
    // For now, we'll log it and return success

    return {
      statusCode: 200,
      headers,
      body: JSON.stringify({ 
        success: true, 
        message: 'Registration received!',
        data: data
      })
    };

  } catch (error) {
    console.error('Error:', error);
    return {
      statusCode: 500,
      headers,
      body: JSON.stringify({ 
        success: false, 
        error: error.message 
      })
    };
  }
};
