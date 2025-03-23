# Generative AI Project

I worked on this project in August 2024 to increase my skills using AI. This project is designed to take a string representing a `blog topic` and forward it to the built-in Machine Learning model in AWS Bedrock. There were many different models I could choose between, and I ultimatly went with `meta.llama3-8b-instruct-v1:0`. The `blog topic` can be anything, such as *Pizza*, *Ferrari vs Lamborghini* or *Healthy food recipes without sugar*, and the model returns a generated long and cohesive text in the format of a blog that is relevant to the inputted `blog topic`.

- **AWS Services used:** *Bedrock, S3, Lambda, API Gateway, Cloudwatch*

## Lambda Function

To integrate the **Llama 3 8B Instruct provided by Meta** model, I used AWS Lambda service. I used a specific library called `Boto3`, which is the Amazon Web Services (AWS) Software Development Kit (SDK) for Python, which allows Python developers to write software that makes use of services. Boto3 invokes the foundational model, and it makes it easy to integrate your Python application, library, or script with AWS services including Amazon S3, Amazon EC2, Amazon DynamoDB, and more.

## Endpoint with Automation

The endpoint is `/api-tests/api-tests.sh` and uses Bash to automate sequences of POST requests using a set of predefined `blog topics` as request bodies.

## Why I want to learn about AI

At a high level, artificial intelligence is a way to describe any system that can replicate tasks that previously required human intelligence. Most AI use cases are looking for a probabilistic outcome—making a prediction or decision with a high degree of certainty, similar to human judgement.

Almost all AI systems today are created using machine learning. ML uses large amounts of data to create and validate decision logic, which is known as a model.

Finally, generative AI is a subset of deep learning that can create new content and ideas, like conversations, stories, images, videos, and music. Generative AI is powered by very large models that are pretrained on vast corpora of data, called the Foundation Models or FMs. Amazon Bedrock is a fully managed service that offers a choice of high-performing FMs for building and scaling generative AI applications. Amazon Q Developer and  Amazon Q Business are generative-AI powered assistants for specific use cases.

In 2024-2025, during 6 months I attended these two related courses during my exchange studies in Italy, Venice:
- [Foundatins of Artificial Intelligence](https://gitlab.com/jex-projects/mrjex/-/tree/main/projects/1.%20courses/year-3/1.%20Exchange%20Studies%20Venice?ref_type=heads)
- [Foundatins of Machine Learning](https://gitlab.com/jex-projects/mrjex/-/tree/main/projects/1.%20courses/year-3/1.%20Exchange%20Studies%20Venice?ref_type=heads)