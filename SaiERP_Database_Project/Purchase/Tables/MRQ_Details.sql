CREATE TABLE [Purchase].[MRQ_Details] (
    [Ref_Id]          BIGINT           IDENTITY (1, 1) NOT NULL,
    [Hdr_Ref_Id_Fk]   BIGINT           NOT NULL,
    [Item_Master_No] UNIQUEIDENTIFIER NULL,
    [Sno]            SMALLINT         NOT NULL,
    [Qty]            FLOAT (53)       NULL,
    [Notes]          VARCHAR (2000)   NULL,
    CONSTRAINT [PK_MRQ_Details_Ref_Id] PRIMARY KEY CLUSTERED ([Ref_Id] ASC),
    CONSTRAINT [PK_Hdr_Ref_Id_Fk_MRQ_Details_To_Purchase.MRQ_Hdr] FOREIGN KEY ([Hdr_Ref_Id_Fk]) REFERENCES [Purchase].[MRQ_Hdr] ([Ref_Id])
);

