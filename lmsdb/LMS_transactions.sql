CREATE PROC UserTransaction

AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		insert into User_Details values('santy@gmail.com','Sam','kin','samuk@yu',9935231478,1);
		insert into User_Details values('Rocky@gmail.com','jons','Rink','jr@yu',7737564521,1);  
		delete from User_Details where first_name='amit';
		 
		-- if insert succeeds, commit the transaction
		COMMIT TRANSACTION;  
	END TRY
	BEGIN CATCH
		-- report exception----
		
		-- Test if the transaction is uncommittable.  
		IF (XACT_STATE()) = -1  
		BEGIN  
			PRINT 'The transaction is in an uncommittable state.' +  
					'Rolling back transaction.'  
			ROLLBACK TRANSACTION;  
		END;  
        
		-- Test if the transaction is committable.  
		IF (XACT_STATE()) = 1  
		BEGIN  
			PRINT 'The transaction is committable.' +  
				'Committing transaction.'  
			COMMIT TRANSACTION;     
		END;  
	END CATCH
END;

exec UserTransaction;

=================================================================================================================================================

--transaction with savepoint

alter PROC UserTransactionUpdate

AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION;
		insert into User_Details values('sammiin@gmail.com','Samir','kinlin','samuk@yuu',9965509878,1);
        
		SAVE TRANSACTION InsertStatement 
		SELECT @@TRANCOUNT AS OpenTransactions
		update User_Details SET first_name='jhon' where first_name='Samir';

		SAVE TRANSACTION UpdateStatement

		select * from User_Details where first_name='jhon';
		 
		-- if update succeeds, commit the transaction
		COMMIT TRANSACTION;  
	END TRY
	BEGIN CATCH
		-- report exception----
		select
		ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_LINE () AS ErrorLine  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_MESSAGE() AS ErrorMessage;
		 
		-- Test if the transaction is uncommittable.  
		IF (XACT_STATE()) = -1  
		BEGIN  
			PRINT 'The transaction is in an uncommittable state.' +  
					'Rolling back transaction.'  
			ROLLBACK TRANSACTION;  
		END;  
        
				IF (XACT_STATE()) = 1  
		BEGIN  
			PRINT 'The transaction commited'  
				  
			COMMIT TRANSACTION;     
		END;  
	END CATCH
END;
--
exec UserTransactionUpdate;

