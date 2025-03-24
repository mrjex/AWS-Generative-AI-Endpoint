# 🤖 AWS Generative AI Blog Creator

> Harnessing the power of AWS Bedrock and Meta's Llama 3 for automated blog generation

[![AWS](https://img.shields.io/badge/AWS-Powered-orange)](https://aws.amazon.com/)
[![Bedrock](https://img.shields.io/badge/Bedrock-AI-blue)](https://aws.amazon.com/bedrock/)
[![Python](https://img.shields.io/badge/Python-3.8+-green)](https://www.python.org/)
[![Status](https://img.shields.io/badge/Status-Completed-success)](https://github.com/yourusername/AWS-Generative-AI-Endpoint)

## 📑 Table of Contents
- [🤖 AWS Generative AI Blog Creator](#-aws-generative-ai-blog-creator)
  - [📑 Table of Contents](#-table-of-contents)
  - [🎯 Overview](#-overview)
  - [🏗 System Architecture](#-system-architecture)
  - [✨ Key Features](#-key-features)
  - [💻 Technical Implementation](#-technical-implementation)
    - [Lambda Function Integration](#lambda-function-integration)
    - [API Automation](#api-automation)
  - [🚀 Getting Started](#-getting-started)
  - [🎓 Development Journey](#-development-journey)
  - [🔗 Related Projects](#-related-projects)

## 🎯 Overview

This project leverages AWS Bedrock's machine learning capabilities to automatically generate comprehensive blog posts from simple topic inputs. Built in August 2024, it demonstrates the practical application of generative AI in content creation using Meta's Llama 3 8B model.

Simply input a topic like:
- 🍕 "Pizza"
- 🏎 "Ferrari vs Lamborghini"
- 🥗 "Healthy food recipes without sugar"

And receive a professionally written, cohesive blog post in response!

## 🏗 System Architecture

The solution integrates multiple AWS services into a seamless pipeline:

![AWS Architecture](assets/architecture.png)

Key AWS Services:
- **Bedrock**: Powers the AI generation with Meta's Llama 3 model
- **Lambda**: Handles request processing and model interaction
- **API Gateway**: Manages RESTful API endpoints
- **S3**: Stores generated content and configurations
- **CloudWatch**: Monitors system performance and logs

## ✨ Key Features

- **Advanced AI Model**: Utilizes `meta.llama3-8b-instruct-v1:0` for high-quality content generation
- **RESTful API**: Simple HTTP POST interface for easy integration
- **Automated Testing**: Bash scripts for automated endpoint validation
- **Scalable Architecture**: AWS-native design for reliable performance
- **Comprehensive Logging**: Detailed CloudWatch insights for monitoring

## 💻 Technical Implementation

### Lambda Function Integration

The core processing is handled by a Python Lambda function using Boto3:

```python
import boto3

def generate_blog(topic):
    bedrock = boto3.client('bedrock-runtime')
    response = bedrock.invoke_model(
        modelId='meta.llama3-8b-instruct-v1:0',
        body=json.dumps({
            "prompt": f"Write a blog about {topic}",
            "max_tokens": 1000
        })
    )
    return response['body']
```

### API Automation

The `/api-tests/api-tests.sh` script enables automated testing:

```bash
#!/bin/bash
topics=("Pizza" "Travel" "Technology")
for topic in "${topics[@]}"; do
    curl -X POST -H "Content-Type: application/json" \
         -d "{\"topic\":\"$topic\"}" \
         https://your-api-endpoint/prod/generate
done
```

## 🚀 Getting Started

1. **Prerequisites**
   - AWS Account with appropriate permissions
   - Python 3.8+
   - AWS CLI configured

2. **Installation**
   ```bash
   git clone https://github.com/yourusername/AWS-Generative-AI-Endpoint
   cd AWS-Generative-AI-Endpoint
   pip install -r requirements.txt
   ```

3. **Deploy Infrastructure**
   ```bash
   terraform init
   terraform apply
   ```

## 🎓 Development Journey

This project was developed during an intensive learning period in AI/ML technologies. Key learning areas included:

- AWS Bedrock service capabilities
- Large Language Model integration
- Serverless architecture design
- API automation and testing

## 🔗 Related Projects

During my 2024-2025 exchange studies in Venice, Italy, I developed several related projects:

| Project | Description | Technologies |
|---------|-------------|--------------|
| [AI Classifiers](https://github.com/mrjex/Artificial-Intelligence-Classifiers) | ML classification algorithms | Python, Scikit-learn |
| [AWS BigData System](https://github.com/mrjex/AWS-BigData-System) | Large-scale data processing | AWS, Hadoop |
| [ML Clustering System](https://github.com/mrjex/Machine-Learning-Clustering-System) | Unsupervised learning | Python, K-means |
| [AI Clusters](https://github.com/mrjex/Artificial-Intelligence-Clusters) | Advanced clustering techniques | TensorFlow, PyTorch |
| [AWS Sagemaker System](https://github.com/mrjex/AWS-Sagemaker-System) | ML model deployment | AWS Sagemaker |
| [Real Estate Price Prediction](https://github.com/mrjex/Real-Estate-Price-Prediction) | Predictive analytics | ML, Regression |

---

*Built with ☁️ AWS and 🐍 Python*