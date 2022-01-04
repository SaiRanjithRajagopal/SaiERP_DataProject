CREATE TABLE [Inventory].[Item_Master] (
    [Item_Master_No]    UNIQUEIDENTIFIER NOT NULL,
    [Item_Grp_Number]   UNIQUEIDENTIFIER NOT NULL,
    [Item_Description]  VARCHAR (1000)   NOT NULL,
    [Stock_Unit]        INT              NOT NULL,
    [Unit_Weight]       INT              NOT NULL,
    [Created_Date]      DATETIME         NOT NULL,
    [LastModified_Date] DATETIME         NOT NULL,
    [Created_By]        BIGINT           NULL,
    [LastModified_By]   BIGINT           NULL,
    PRIMARY KEY CLUSTERED ([Item_Master_No] ASC),
    FOREIGN KEY ([Created_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    FOREIGN KEY ([Item_Grp_Number]) REFERENCES [Inventory].[Item_Group] ([Group_No]),
    FOREIGN KEY ([Item_Grp_Number]) REFERENCES [Inventory].[Item_Group] ([Group_No]),
    FOREIGN KEY ([LastModified_By]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id])
);

