CREATE TABLE [Supplier].[Master] (
    [Id]               BIGINT         IDENTITY (1, 1) NOT NULL,
    [CompanyName]      VARCHAR (1000) NOT NULL,
    [Contact_Name]     VARCHAR (1000) NOT NULL,
    [Address]          VARCHAR (2000) NULL,
    [City]             VARCHAR (255)  NULL,
    [PostCode]         VARCHAR (20)   NULL,
    [Country]          VARCHAR (255)  NULL,
    [Email_Address]    VARCHAR (255)  NULL,
    [Contact_No]       VARCHAR (255)  NULL,
    [CreatedBy]        BIGINT         NOT NULL,
    [ModifiedBy]       BIGINT         NOT NULL,
    [CreatedDate]      DATE           DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate] DATE           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

