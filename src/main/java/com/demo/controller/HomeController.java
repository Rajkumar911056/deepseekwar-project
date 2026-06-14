package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    // Serve JSP page
    @GetMapping("/")
    public String home(Model model, HttpServletRequest request) {
        model.addAttribute("serverTime", LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        model.addAttribute("serverInfo", request.getServerName());
        model.addAttribute("javaVersion", System.getProperty("java.version"));
        model.addAttribute("osName", System.getProperty("os.name"));
        model.addAttribute("appVersion", "1.0.0");
        return "index";
    }

    // REST API - Get application status
    @GetMapping("/api/status")
    @ResponseBody
    public Map<String, Object> apiStatus() {
        Map<String, Object> response = new HashMap<>();
        response.put("message", "Welcome to Java DevOps Demo on Tomcat!");
        response.put("timestamp", LocalDateTime.now().toString());
        response.put("status", "running");
        response.put("version", "1.0.0");
        response.put("javaVersion", System.getProperty("java.version"));
        response.put("server", "Apache Tomcat");
        return response;
    }

    // REST API - Health check
    @GetMapping("/api/health")
    @ResponseBody
    public Map<String, String> apiHealth() {
        Map<String, String> health = new HashMap<>();
        health.put("status", "UP");
        health.put("service", "java-devops-demo");
        health.put("type", "WAR deployment on Tomcat");
        health.put("timestamp", LocalDateTime.now().format(DateTimeFormatter.ISO_LOCAL_DATE_TIME));
        return health;
    }

    // REST API - System information
    @GetMapping("/api/info")
    @ResponseBody
    public Map<String, Object> apiInfo() {
        Map<String, Object> info = new HashMap<>();
        info.put("appName", "Java DevOps Demo");
        info.put("version", "1.0.0");
        info.put("packaging", "WAR");
        info.put("container", "Tomcat");
        info.put("javaVersion", System.getProperty("java.version"));
        info.put("memoryMax", Runtime.getRuntime().maxMemory() / (1024 * 1024) + " MB");
        info.put("memoryTotal", Runtime.getRuntime().totalMemory() / (1024 * 1024) + " MB");
        info.put("memoryFree", Runtime.getRuntime().freeMemory() / (1024 * 1024) + " MB");
        info.put("availableProcessors", Runtime.getRuntime().availableProcessors());
        return info;
    }
}
