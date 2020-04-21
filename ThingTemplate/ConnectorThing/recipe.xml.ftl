<?xml version="1.0"?>
<recipe>
    <dependency mavenUrl="com.android.support:support-v4:+"/>

    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />

    <instantiate from="src/app_package/Thing.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}.java" />

</recipe>