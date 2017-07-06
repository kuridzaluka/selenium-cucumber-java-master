package stepDefintions;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriverException;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import env.BaseTest;

public class Hooks {
	@After("@NegativeTest")
	public void beforeScenario(Scenario scenario) {
		//		System.out.println("In hooks");
		//		System.out.println(scenario.getName());
		//		System.out.println(scenario.getStatus());
	}

	@After
	public void embedScreenshot(Scenario scenario){
		if (scenario.isFailed()) {
			try {
				byte[] screenshot = ((TakesScreenshot) BaseTest.driver).getScreenshotAs(OutputType.BYTES);
				scenario.embed(screenshot, "image/png");
			} catch (WebDriverException wde) {
				System.err.println(wde.getMessage());
			} catch (ClassCastException cce) {
				cce.printStackTrace();
			}
		}
	}
}
