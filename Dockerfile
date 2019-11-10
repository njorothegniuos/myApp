FROM java:8
ADD /SpringRestApi_Jenkins_pipeline-0.0.1-SNAPSHOT.jar //
ENTRYPOINT ["java", "-jar", "/SpringRestApi_Jenkins_pipeline-0.0.1-SNAPSHOT.jar"]
