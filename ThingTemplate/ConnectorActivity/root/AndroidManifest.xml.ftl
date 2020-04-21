<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
        <service android:name="${packageName}.${serviceClass}"
            android:exported="false"
            android:stopWithTask="false" >
        </service>
    </application>

</manifest>
