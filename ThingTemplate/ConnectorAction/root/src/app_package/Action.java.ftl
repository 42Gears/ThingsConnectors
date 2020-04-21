package ${packageName};

import com.gears42.iot.webthing.Action;
import com.gears42.iot.webthing.ActionResponse;
import com.gears42.iot.webthing.Thing;
import com.google.gson.JsonObject;
import java.util.UUID;

public class ${className} extends Action {

    public ${className}(Thing thing, JsonObject input) {
        super(UUID.randomUUID().toString(), thing, "dummyAction", input);
    }

    @Override
    public ActionResponse performAction(ActionResponse actionResponse) {

        //here we can access different properties of action class
        Thing thing = this.getThing();
        JsonObject input = this.getInput();


        //if action is failed then change status
        //actionResponse.setReason("Your reason");
        //actionResponse.setStatus("Failed");

        actionResponse.setReason("completed");
        return actionResponse;
    }

}