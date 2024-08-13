checkstyle:
	./gradlew checkstyle

javadoc:
	# Output is (module)/build/docs/javadoc/release
	./gradlew library:javadocrelease

test:
	./gradlew :library:test -i

release:
	./gradlew :library:assembleRelease

.PHONY: run-android-publish
run-android-publish:
	./gradlew :library:publishReleasePublicationToSonatypeRepository closeAndReleaseSonatypeStagingRepository