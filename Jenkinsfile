pipeline {
    agent any

    tools {
        ansible "ansible_2.13.2"
    }
    stages {
        stage('Tomcat Installation') {
            steps {
                ansiblePlaybook('Setup-Tomcat.yml') {
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
        stage('Compile War') {
            steps {
                ansiblePlaybook('Package-War.yml') {
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
        stage('Deploy War') {
            steps {
                ansiblePlaybook('Deploy-War.yml') {
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
    }
}