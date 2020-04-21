package ${packageName};

import com.gears42.iot.webthing.Property;
import com.gears42.iot.webthing.Thing;
import com.gears42.iot.webthing.Value;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class ${className} extends Thing {

    Value<Integer> valueDummyOne;
    Value<Boolean> valueDummyTwo;
    Value<String> valueDummyThree;

    public ${className}(String name, String description, String uniqueID) {
        super(name, Arrays.asList(name), description, uniqueID);

         //add properties and actions
        Map<String, Object> mapDummyOne = new HashMap<String, Object>();
        mapDummyOne.put("@type", "Property Type");
        mapDummyOne.put("label", "Dummy Number Label");
        mapDummyOne.put("type", "number");
        mapDummyOne.put("readOnly", false);
        mapDummyOne.put("description", "Dummy description of your property");
        valueDummyOne = new Value<Integer>(30, dummyValue -> dummyIntegerValueFromSureMDMConsole(dummyValue));
        this.addProperty(new Property(this, "dummy_one", valueDummyOne, mapDummyOne));

        Map<String, Object> mapDummytwo = new HashMap<String, Object>();
        mapDummytwo.put("@type", "Property Type");
        mapDummytwo.put("label", "Dummy Boolean Label");
        mapDummytwo.put("type", "boolean");
        mapDummytwo.put("readOnly", true);
        mapDummytwo.put("description", "Dummy description of your property");
        valueDummyTwo = new Value<Boolean>(true, dummyValue -> dummyBooleanValueFromSureMDMConsole(dummyValue));
        this.addProperty(new Property(this, "dummy_two", valueDummyTwo, mapDummytwo));

        Map<String, Object> mapDummyThree = new HashMap<String, Object>();
        mapDummyThree.put("@type", "Property Type");
        mapDummyThree.put("label", "Dummy String Label");
        mapDummyThree.put("type", "string");
        mapDummyThree.put("readOnly", true);
        mapDummyThree.put("description", "Dummy description of your property");
        valueDummyThree = new Value<String>("fake value", dummyValue -> dummyStringValueFromSureMDMConsole(dummyValue));
        this.addProperty(new Property(this, "dummy_three", valueDummyThree, mapDummyThree));

        //add action
        Map<String, Object> dummyctionMetadata = new HashMap<String, Object>();
        Map<String, Object> dummyActionInput = new HashMap<String, Object>();
        Map<String, Object> dummyActionProperties = new HashMap<String, Object>();
        Map<String, Object> dummyActionStatus = new HashMap<String, Object>();
        Map<String, Object> dummyActionDuration = new HashMap<String, Object>();

        dummyActionStatus.put("type", "number");
        dummyActionProperties.put("inputone", dummyActionStatus);

        dummyActionDuration.put("type", "string");
        dummyActionProperties.put("inputtwo", dummyActionDuration);

        dummyActionInput.put("type", "object");
        dummyActionInput.put("required", Arrays.asList(new String[]{"inputone", "inputtwo"}));
        dummyActionInput.put("properties", dummyActionProperties);

        dummyctionMetadata.put("label", "Dummy Action Label");
        dummyctionMetadata.put("description", "Dummy Action Description");
        dummyctionMetadata.put("input", dummyActionInput);

        //replace with your action class name, we will create action class in next step
        this.addAvailableAction("dummyAction", dummyctionMetadata, FadeAction.class);

    }

    //These methods will be called when property is changed from SureMDM console
    public void dummyBooleanValueFromSureMDMConsole(boolean dummyValue) {
        //dummyvalue is updated from console
        //update this value in to your physical device
    }

    public void dummyIntegerValueFromSureMDMConsole(int dummyValue) {
        //dummyvalue is updated from console
        //update this value in to your physical device
    }

    public void dummyStringValueFromSureMDMConsole(String dummyValue) {
        //dummyvalue is updated from console
        //update this value in to your physical device
    }

    @Override
    public void update() {

        //this method is called when you retrieve properties to keep values up to date

        //get updated value from physical device and update it into mdm console,
        //valueDummyOne.notifyOfExternalUpdate(50); it will update 50 as a value to mdm console.

    }

}