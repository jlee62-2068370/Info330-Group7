# INFO 330 Final Project, Group 7
## Jordan Lee, Tyler Ramos, Jesus Vargas

### Directory
* README.md: contains project proposal as content, gives insight on the database we will be working with
* create-import.sql: contains sql code for table creations and importing values into db
* Info330Project-Group7.db: database containing data and made off our schema
* Info-330, Project ERD.png: ERD of our schema
* Final Project - Group 7.pdf: PDF version of our presentation slides
* queries: contains all queries written by each individual
* visuals: contains all visuals created by each individual

## The Problem:
Exploring the rationale behind a student's alcohol consumption and the effects of alcoholism on academics is indeed an important topic. Abuse of alcohol can have a multitude of negative impacts on students' general health at a time when their bodies should be functioning at their best, in addition to their capacity to learn and grow. Given this statement, the issue lies in deciphering and understanding the primary reason why a student chooses to consume alcohol. Whether for social reasons, coping mechanisms, or peer pressure, everyone has a different reason for why they consume alcohol or why not. To that end, let's delve deeper and consider some possible factors that can contribute to a student's decision to consume alcohol.

* Social Reasons: A common reason students may find themselves consuming alcohol is due to social reasons. Naturally, students have an innate desire to fit in amongst their peers and socialize with one another. As a result, students could feel pressured to drink in order to fit in with the social scene or social norm because alcohol is frequently associated with social gatherings, parties, and other events.

* Coping Mechanisms: Students may turn to alcohol as a way to cope with internal struggles, social/academic anxiety, or academic stress. Whether it be from academic pressure, being away from home for too long, dealing with a harsh transition between high school to college, or personal reasons, students can find themselves in a predicament where alcohol is their only escape from reality. 

* Family upbringing/support: The family environment and upbringing of a student may have an effect on how frequently they drink. If alcohol is consumed often at home or if alcoholism runs in the family, a student may be more likely to indulge in binge drinking.  The level of guidance and support a student receives from their family, friends, and institutions of higher education may have an impact on their use of alcohol. Students with strong social networks are more likely to make healthier decisions and request help when they do. On the other hand, students who may not have these support systems available to them could struggle with making healthy decisions and asking for guidance when needed. 

## Dataset: 

Found [here](https://www.kaggle.com/datasets/uciml/student-alcohol-consumption) <--

The dataset being discussed here is related to student performance, with a focus on two specific courses: Math and Portuguese language. It comprises various attributes pertaining to a student's personal and academic life. This intriguing dataset can be accessed on the UCI Machine Learning Repository, a well-known source of data for researchers and data scientists. In our case, we were happy to have found the dataset via the Kaggle website after doing some research regarding this topic. 

What's particularly striking about this dataset is the holistic perspective it provides into a student's life. Beyond traditional academic variables such as study time and past class failures, it incorporates attributes from the student's personal situation, such as family education, home address type, romantic relationships, and even workday/weekend alcohol consumption. Additionally, the dataset offers a categorized section regarding reasons why a student responder drinks. Whether it be for social 'reputation', close to 'home' feelings, 'course' struggles, or 'other', the information provided by the dataset allows us to investigate the various factors that influence alcohol consumption. Moveover, offering such a wide array of variables also allows an in-depth exploration of how various aspects of life may influence academic performance. 
In all, it is absolutely necessary for students like us to become conscientious and aware of the problems surrounding alcohol consumption. With drinking culture becoming ever more prominent in our society, not only do we want to make active healthy decisions for ourselves, but also become a resource for others who may be struggling with alcohol consumption to lean on and receive support from. As such, the only way to achieve this goal is developing an understanding and awareness of the potential risks associated with alcohol consumption. Luckily the dataset found allows us to examine the issues laid out in the problem statement above and educate ourselves on the different situations other students may face. 


## Areas of Research (Queries):
1. Primary reason for a student's alcohol consumption and average age group per category (Jordan): 
    * First and foremost it is important to examine the primary reason for alcohol consumption in this sample pool. As mentioned, the dataset gives responders the option to choose between social 'reputation', close to 'home' feelings, 'course' struggles, or 'other'. By investigating the different distributions of these categorical variables, it becomes possible to draw a rough baseline when considering the relationship between alcohol consumption and the reasons stated by students in the dataset. 
    * Another variable that can be accounted for in this query is the average age group per category. Considering this factor can help formulate any relationships between age and  reason for student alcohol consumption. For example, perhaps those that have selected drinking for 'reputation' purposes are younger in age compared to those who drink to cope with 'home' issues. These findings can shed light on how different life stages and experiences influence students' rationales for alcohol consumption. Furthermore, this can help paint a more refined understanding of age, motivation, and alcohol consumption amongst students. 

2. Correlation between education levels of parents (Medu, Fedu) and student performance (Jesus):
    * Analyzing the correlation between the education levels of parents (Medu and Fedu) and student performance is an important aspect of understanding the influence of parental education on academic outcomes. By examining this relationship we can assess whether higher parental education is associated with better student performance, regardless of alcohol consumption. Furthermore, this helps distinguish whether or not alcohol consumption causes lower performance or if academic performance is more tied to family education. 

3. The impact of personal lifestyle choices on academic performance (Jesus):
    * Variables like alcohol consumption (Dalc, Walc), going out with friends (goout), and involvement in romantic relationships (romantic) could be evaluated against academic performance to identify potential patterns or correlations. Another interesting query that can tie into this area of research is comparing the listed variables to a responder's reason for drinking. For example, it will be interesting to see if a student who drinks for 'reputation' purposes goes out more or is in a romantic relationship has a higher (Dalc, Walc), but have lower 'G1', 'G2', 'G3' grades.

4. Parental status and alcohol consumption (Jordan):
    * The parental status could be a large reason that dictates someone's decision to consume alcohol. This data set has categorized between students who have parents living together 'T', or living apart 'A' and also includes a variable calculating the total consumption of workday/weekend alcohol consumption. Naturally, it is essential to approach the analysis with caution and recognize that the reasons for drinking and alcohol consumption patterns can be influenced by a multitude of factors, not just based off of parental status. As such, parental status will be assessed alongside a responder's reason for drinking. For the sake of this query, only those who have listed 'home' as their primary reason for drinking will be considered as it is safer to assume it may be due to their parental living status. This will help distinguish between students who have parents living apart and drink for social reasons, versus those who drink specifically because of their parents' living situation.

5. Correlation between address (rural, urban) and student performance (Tyler):
    * The geographical location of the students may have some influence on a student and their decision to consume alcohol. The rationale behind this query is that some rural areas may have a small town environment which could allow for more consideration for minors within the town.When compared to urban metropolises which may have more lax rules and have less consideration for minors. This data set has categorized between ‘U’, urban, or ‘R’ rural. 

6. Correlation between sex (male, female) and student performance (Tyler):
    * In this dataset it also includes the sex of the individuals who took part in this survey
which I believe the sex of the individual may provide some insight into the decision making. Alongside the direct correlation this dataset also includes the reasons for drinking which we may be able to pull some insight into why certain sex’s drink and be able to directly provide support via their sex. This data set has categorized between ‘F’, female or ‘M’ male,
