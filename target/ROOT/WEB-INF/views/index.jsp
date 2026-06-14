<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java DevOps Demo - Tomcat Deployment</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        .header {
            background: white;
            border-radius: 10px;
            padding: 30px;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
            text-align: center;
        }

        .header h1 {
            color: #667eea;
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        .header .badge {
            display: inline-block;
            background: #dc3545;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.8em;
            margin-top: 10px;
        }

        .status-card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .status-badge {
            display: inline-block;
            padding: 5px 15px;
            border-radius: 20px;
            font-weight: bold;
            margin-bottom: 20px;
            background: #10b981;
            color: white;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .info-card {
            background: #f8f9fa;
            border-radius: 8px;
            padding: 20px;
            border-left: 4px solid #667eea;
            transition: transform 0.3s;
        }

        .info-card:hover {
            transform: translateY(-5px);
        }

        .info-card h3 {
            color: #667eea;
            margin-bottom: 10px;
            font-size: 1.1em;
        }

        .info-card .value {
            font-size: 1.3em;
            font-weight: bold;
            color: #333;
            font-family: 'Courier New', monospace;
        }

        .tomcat-badge {
            background: #f8f9fa;
            border-left-color: #dc3545;
        }

        .endpoints {
            background: white;
            border-radius: 10px;
            padding: 25px;
            margin-bottom: 30px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.1);
        }

        .endpoint-list {
            list-style: none;
        }

        .endpoint-list li {
            background: #f8f9fa;
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .endpoint-method {
            background: #667eea;
            color: white;
            padding: 5px 10px;
            border-radius: 3px;
            font-size: 0.8em;
            font-weight: bold;
            margin-right: 15px;
        }

        .response-area {
            margin-top: 20px;
            background: #1e1e1e;
            color: #d4d4d4;
            padding: 20px;
            border-radius: 8px;
            font-family: 'Courier New', monospace;
            overflow-x: auto;
        }

        .try-btn {
            background: #10b981;
            color: white;
            border: none;
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .try-btn:hover {
            background: #059669;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🐘 Java DevOps Demo Platform</h1>
            <p>WAR Deployment | Apache Tomcat | CI/CD Pipeline</p>
            <div class="badge">📦 Deployed as WAR file</div>
        </div>

        <div class="status-card">
            <div class="status-badge">✅ Application Running on Tomcat</div>
            
            <div class="info-grid">
                <div class="info-card">
                    <h3>📦 Application Version</h3>
                    <div class="value">${appVersion}</div>
                </div>
                <div class="info-card">
                    <h3>☕ Java Version</h3>
                    <div class="value">${javaVersion}</div>
                </div>
                <div class="info-card tomcat-badge">
                    <h3>🐘 Server</h3>
                    <div class="value">Apache Tomcat</div>
                </div>
                <div class="info-card">
                    <h3>🕐 Server Time</h3>
                    <div class="value" id="serverTime">${serverTime}</div>
                </div>
            </div>
        </div>

        <div class="endpoints">
            <h2>📡 Available API Endpoints</h2>
            <ul class="endpoint-list">
                <li>
                    <div>
                        <span class="endpoint-method">GET</span>
                        <span style="font-family: monospace;">/api/status</span>
                        <span style="color: #666; margin-left: 10px;">- Application status</span>
                    </div>
                    <button class="try-btn" onclick="testEndpoint('/api/status')">Try it</button>
                </li>
                <li>
                    <div>
                        <span class="endpoint-method">GET</span>
                        <span style="font-family: monospace;">/api/health</span>
                        <span style="color: #666; margin-left: 10px;">- Health check</span>
                    </div>
                    <button class="try-btn" onclick="testEndpoint('/api/health')">Try it</button>
                </li>
                <li>
                    <div>
                        <span class="endpoint-method">GET</span>
                        <span style="font-family: monospace;">/api/info</span>
                        <span style="color: #666; margin-left: 10px;">- System info</span>
                    </div>
                    <button class="try-btn" onclick="testEndpoint('/api/info')">Try it</button>
                </li>
            </ul>
        </div>

        <div id="responseArea" style="display: none;" class="response-area">
            <strong>📤 API Response:</strong>
            <pre id="responseContent"></pre>
        </div>

        <div class="footer">
            <p>🏗️ Built with Spring MVC | 🐳 Containerized with Docker | ☸️ Deployed on Kubernetes</p>
            <p style="margin-top: 10px; font-size: 0.9em;">Tomcat 8/9/10 Compatible | WAR Packaging</p>
        </div>
    </div>

    <script>
        async function testEndpoint(endpoint) {
            const responseArea = document.getElementById('responseArea');
            const responseContent = document.getElementById('responseContent');
            
            responseArea.style.display = 'block';
            responseContent.innerHTML = 'Loading...';
            
            try {
                const response = await fetch(endpoint);
                const data = await response.json();
                responseContent.innerHTML = JSON.stringify(data, null, 2);
                responseArea.scrollIntoView({ behavior: 'smooth' });
            } catch (error) {
                responseContent.innerHTML = `Error: ${error.message}`;
            }
        }

        function updateTime() {
            fetch('/api/status')
                .then(res => res.json())
                .then(data => {
                    document.getElementById('serverTime').innerHTML = new Date(data.timestamp).toLocaleString();
                })
                .catch(err => console.log(err));
        }
        
        setInterval(updateTime, 1000);
    </script>
</body>
</html>
