pipeline {
    agent any

    stages {
        stage('Tomcat Installation') {
            steps {
                ansiblePlaybook credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Setup-Tomcat.yml'
            }
        }
        stage('Compile War') {
            steps {
                ansiblePlaybook credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Package-War.yml'
            }
        }
        stage('Deploy War') {
            steps {
                ansiblePlaybook credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Deploy-War.yml'
            }
        }   
    }
}