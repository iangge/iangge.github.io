---
title: 'Docker Volume and Storage Notes' 
date: 2025-01-10 12:07:10
categories: [Technology, Notes]
tags: [docker, storage]
---

## Docker Volumes

[Docker volumes](https://docs.docker.com/engine/storage/volumes/) are used as persistent storage for containers to allow data to be stored even if those containers are stopped or deleted. This type of storage is separate from bind mounts and tmpfs mounts. 

[Bind mounts](https://docs.docker.com/engine/storage/bind-mounts/) are another form of persistent storage for docker containers. They depend on the host machine's file system and OS, while volumes are "completely managed by Docker" ([Sharma, 2024](https://community.aws/content/2mmx8xQee5UhvQYkumnmFvRFy0M/what-is-docker-volume)). Meanwhile, [tmpfs mounts](https://docs.docker.com/engine/storage/tmpfs/) are non-persistent, only stored in the host's memory, and used for temporary storage. 

I found the following image below to be helpful for visualizing these 3 types of storage for Docker containers:

![Docker Image Diagram](https://miro.medium.com/v2/format:webp/0*hN3NgV1e3ZchXg_G)
([Abbas, 2024](https://medium.com/@AbbasPlusPlus/docker-volumes-explained-adc5bf89d5df)).

## Pantry Analogy for Docker Volumes

Another helpful way to think of Docker volumes is by imagining them as a pantry. Docker volumes exist outside of containers in a similar way to how pantries are separate from kitchens. Plus, the ingredients in pantries can be used for different recipes, and they still remain even if the kitchen is not in use. Similarly, volumes are persistent storage that can be used by multiple different containers ([Bakare, 2024](https://dev.to/mrcaption49/docker-basics-with-analogies-485c#:~:text=Analogy:%20Docker%20is%20like%20a%20%E2%80%9Ctakeout%20kitchen%E2%80%9D,where%20it's%20delivered%2C%20it'll%20work%20the%20same.&text=Analogy:%20A%20volume%20is%20like%20a%20%E2%80%9Cpantry%E2%80%9D,ingredients%20can%20be%20stored%20for%20later%20use.)).

## References

* Abbas, 2024. [Medium - Docker Volumes Expained](https://medium.com/@AbbasPlusPlus/docker-volumes-explained-adc5bf89d5df)
* Bakare, 2024. [dev.to - Docker Basics with Analogies](https://dev.to/mrcaption49/docker-basics-with-analogies-485c#:~:text=Analogy:%20Docker%20is%20like%20a%20%E2%80%9Ctakeout%20kitchen%E2%80%9D,where%20it's%20delivered%2C%20it'll%20work%20the%20same.&text=Analogy:%20A%20volume%20is%20like%20a%20%E2%80%9Cpantry%E2%80%9D,ingredients%20can%20be%20stored%20for%20later%20use.)
* Sharma, 2024. [AWS Community - What is Docker Volume](https://community.aws/content/2mmx8xQee5UhvQYkumnmFvRFy0M/what-is-docker-volume)

### Docker Docs
* [Docker Volumes](https://docs.docker.com/engine/storage/volumes/)
* [Bind Mounts](https://docs.docker.com/engine/storage/bind-mounts/)
* [tmpfs mounts](https://docs.docker.com/engine/storage/tmpfs/)