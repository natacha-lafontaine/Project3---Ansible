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
                git 'https://github.com/natacha-lafontaine/Project3---Ansible.git'

                sh "mvn clean package"
            }
        }     
    }
}