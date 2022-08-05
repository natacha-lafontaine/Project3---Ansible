pipeline {
    agent any

    stages {
        stage('Tomcat Installation') {
            steps {
                ansiblePlaybook colorized: true, credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Setup-Tomcat.yml'
            }
        }
        stage('Compile War') {
            steps {
                ansiblePlaybook colorized: true, credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Package-War.yml'
            }
        }
        stage('Deploy War') {
            steps {
                ansiblePlaybook colorized: true, credentialsId: 'Tomcat', installation: 'ansible_2.13.2', inventory: '/etc/ansible/hosts', playbook: './Deploy-War.yml'
            }
        }
    }
}