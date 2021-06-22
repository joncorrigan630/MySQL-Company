
CREATE TABLE grad_students (
	Major_ID INT PRIMARY KEY,
    Major_Name VARCHAR(255) NOT NULL, 
    Major_Category VARCHAR(255) NOT NULL, 
    Grad_Total INT NOT NULL, 
    Grad_Sample_Size INT NOT NULL, 
    Grad_Employed INT NOT NULL, 
    Grad_Employed_FT_Annually INT NOT NULL, 
    Grad_Unemployed INT NOT NULL, 
    Grad_Unemployment_Rate DECIMAL(10,9) NOT NULL, 
    Grad_Median INT NOT NULL, 
    Grad_25th_Percntile INT NOT NULL,
    Grad_75th_Percentile INT NOT NULL, 
    Non_Grad_Total INT NOT NULL, 
    Non_Grad_Employed INT NOT NULL, 
    Non_Grad_Employed_FT_Annually INT NOT NULL, 
    Non_Grad_Unemployed INT NOT NULL, 
    Non_Grad_Unemployment_Rate DECIMAL(10, 9) NOT NULL, 
    Non_Grad_Median INT NOT NULL, 
    Non_Grad_25th_Percentile INT NOT NULL, 
    Non_Grad_75th_Percentile INT NOT NULL, 
    Grad_Share DECIMAL(10, 9) NOT NULL, 
    Grad_Premium DECIMAL(10, 9) NOT NULL,
    UNIQUE (Major_Name) 
);

CREATE TABLE recent_graduates (
	ID INT, 
    Major_ID INT, 
    Major_Name VARCHAR(255) NOT NULL, 
    Recent_Grad_Total INT NOT NULL, 
    Male INT NOT NULL, 
    Female INT NOT NULL, 
    Major_Category VARCHAR(255) NOT NULL, 
    Share_Female DECIMAL(10, 9) NOT NULL, 
    Sample_Size INT NOT NULL, 
    Employed INT NOT NULL, 
    Employed_FT INT NOT NULL, 
    Employed_PT INT NOT NULL, 
    Employed_FT_Annually INT NOT NULL, 
    Unemployed INT NOT NULL, 
    Unemployment_Rate DECIMAL(10,9) NOT NULL, 
    Recent_Grad_Median INT NOT NULL, 
    Recent_Grad_25th_Percentile INT NOT NULL, 
    Recent_Grad_75th_Percentile INT NOT NULL, 
    College_Jobs  INT NOT NULL, 
    Non_College_Jobs INT NOT NULL, 
    Low_Wage_Jobs INT NOT NULL,
    PRIMARY KEY(ID, Major_ID),
    UNIQUE (Major_Name)
); 

CREATE TABLE students_all_ages (
	Major_ID INT PRIMARY KEY, 
    Major_Name VARCHAR(255) NOT NULL, 
    Major_Category VARCHAR(255) NOT NULL, 
    Students_Total INT NOT NULL,
    Employed INT NOT NULL,
    Employed_FT_Annually INT NOT NULL, 
    Unemployed INT NOT NULL, 
    Unemployment_Rate DECIMAL(10,9) NOT NULL,
    Students_Median INT NOT NULL, 
    Students_25th_Percentile INT NOT NULL, 
    Students_75th_Percentile INT NOT NULL,
	UNIQUE (Major_Name)
); 


	
	