import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class CucumberTest {

    int currentAccount;
    int savingAccount;

    @Given("I have {int} on currentAccount")
    public void setCurrentAccount(int value){
        currentAccount = value;
    }

    @And("I have {int} on savingAccount")
    public void setSavingAccount(int value){
        savingAccount = value;
    }

    @When("I transfer {int} from currentAccount to savingAccount")
    public void transferMoney(int value){
        currentAccount = currentAccount - value;
        savingAccount = savingAccount + value;
        // te poniżej robią to samo:
        // currentAccount -= 500;
        // savingAccount += 500;
    }

    @Then("Transfer was executed")
    public void showTransfer(){
        System.out.println("currentAccount: " + currentAccount);
        System.out.println("savingAccount: " + savingAccount);
    }

    @And("Statement appear {word}")
    public void statement(String statement){
        System.out.println(statement);
    }
}



