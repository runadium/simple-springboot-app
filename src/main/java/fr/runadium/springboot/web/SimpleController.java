package fr.runadium.springboot.web;

import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SimpleController {

	@GetMapping("/hello")
	public String hello(@RequestParam(value = "name", defaultValue = "World") String name) throws Exception {
		return String.format("Hello %s from HOST [%s] and IP [%s] @ %s", name, InetAddress.getLocalHost().getHostName(),
				InetAddress.getLocalHost().getHostAddress(), new SimpleDateFormat().format(new Date()));
	}

}
