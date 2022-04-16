package StepDefs;

import static org.junit.Assert.assertEquals;

import org.junit.Assert;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CalculatorSteps {
	
	public int result;
	
	@Given("I have a calculator")
	public void i_have_a_calculator() {
	    // Write code here that turns the phrase above into concrete actions

		System.out.println("Inside Calculator");
	}

	@When("I add {int} and {int}")
	public void i_add_and(Integer int1, Integer int2) {
	    // Write code here that turns the phrase above into concrete actions
	
		result = int1 + int2;
	}

	@Then("I should get the result as {int}")
	public void i_should_get_the_result_as(int res) {
	    // Write code here that turns the phrase above into concrete actions

		Assert.assertEquals(res, result);
	}

	@When("I substract {int} and {int}")
	public void i_substract_and(Integer int1, Integer int2) {
	    // Write code here that turns the phrase above into concrete actions

		result = int1 - int2;
	}



@When("I add below numbers")
public void i_add_below_numbers(io.cucumber.datatable.DataTable dataTable) {
 
	int rows = dataTable.height();
	
	for(int i=0; i<rows; i++) {
		
		result = result + Integer.parseInt(dataTable.cell(i, 0));
	}
	
}

@When("I order below items")
public void i_order_below_items(io.cucumber.datatable.DataTable dataTable) {
   
	
}

@When("I order below items and quantity")
public void i_order_below_items_and_quantity(io.cucumber.datatable.DataTable dataTable) {
    
	
}

@When("I add below numbers using List")
public void i_add_below_numbers_using_list(io.cucumber.datatable.DataTable dataTable) {
    
	
}

}
