pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
                oc login --token=sha256~fZ2X9gZ9G0XOKIhIc74-RUdg947yZWfujNGVmIoThXE --server=
                openshift.withCluster( 'https://api.rm1.0a51.p1.openshiftapps.com:6443', 'sha256~fZ2X9gZ9G0XOKIhIc74-RUdg947yZWfujNGVmIoThXE' ) {
                    openshift.withProject( 'mavc23-dev' ) {
                        echo "Hello from project ${openshift.project()} in cluster ${openshift.cluster()}"
                    }
                }
            }
        }
        stage("Checkout") {
            steps {
                checkout scm
            }
        }
        stage("Docker Build") {
            steps {
              sh '''
                  #oc start-build --from-build=<build_name>
                  oc start-build -F red-api --from-dir=./api/
              '''
            }
        }
    }
}
