package API;
import static org.junit.Assert.*;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ServerSocket;

import org.junit.Test;

public class SecurityTest {
	
	private static final int MIN_PORT_NUMBER = 0;
	private static final int MAX_PORT_NUMBER = 10000;

	public static boolean available(int port) {
	    if (port < MIN_PORT_NUMBER || port > MAX_PORT_NUMBER) {
	        throw new IllegalArgumentException("Invalid start port: " + port);
	    }

	    ServerSocket ss = null;
	    DatagramSocket ds = null;
	    try {
	        ss = new ServerSocket(port);
	        ss.setReuseAddress(true);
	        ds = new DatagramSocket(port);
	        ds.setReuseAddress(true);
	        return true;
	    } catch (IOException e) {
	    } finally {
	        if (ds != null) {
	            ds.close();
	        }

	        if (ss != null) {
	            try {
	                ss.close();
	            } catch (IOException e) {
	                /* should not be thrown */
	            }
	        }
	    }
	    return false;
	}
	
	@Test
	public void testHTTPS() {
		boolean test = available(443);
		assertTrue(!test);
	}
	

}
