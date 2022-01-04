CREATE TABLE [Purchase].[PO_Hdr] (
    [Refno]             BIGINT IDENTITY (1, 1) NOT NULL,
    [Supplier_Id_Fk]    BIGINT NOT NULL,
    [Total_Amount]      MONEY  NULL,
    [CreatedBy_Fk]      BIGINT NOT NULL,
    [LastModifiedBy_Fk] BIGINT NOT NULL,
    [CreatedDate]       DATE   DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate]  DATE   NOT NULL,
    PRIMARY KEY CLUSTERED ([Refno] ASC),
    FOREIGN KEY ([CreatedBy_Fk]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    FOREIGN KEY ([LastModifiedBy_Fk]) REFERENCES [Hrms].[Employee_Master] ([Employee_Id]),
    FOREIGN KEY ([Supplier_Id_Fk]) REFERENCES [Supplier].[Master] ([Id])
);

