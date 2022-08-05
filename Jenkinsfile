pipeline {
    agent any

    stages {
        stage('Tomcat Installation') {
            steps {
                ansiblePlaybook('./Setup-Tomcat.yml') {
					ansibleName('ansible_2.13.2')
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
        stage('Compile War') {
            steps {
                ansiblePlaybook('./Package-War.yml') {
					ansibleName('ansible_2.13.2')
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
        stage('Deploy War') {
            steps {
                ansiblePlaybook('./Deploy-War.yml') {
					ansibleName('ansible_2.13.2')
					inventoryPath('/etc/ansible/hosts')
					credentialsId('/home/ubuntu/.ssh/id_rsa')
					colorizedOutput(true)
				}
            }
        }
    }
}