package vulnapp;
import junit.framework.Assert;
import org.junit.Test;
import vulnapp.*;

import com.thoughtworks.selenium.*;
import java.util.regex.Pattern;

public class TestApp1 {

	@Test
	public void firstUnitTest() {
		ClassA classA = new ClassA();
		Assert.assertEquals(classA.getValue(), 3);

	}
	

}

