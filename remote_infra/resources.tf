resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "abcfrhjk904-terr"
}
resource "aws_dynamodb_table" "my_dynamo_table" {
	name = "terr-dynamo"
	billing_mode ="PAY_PER_REQUEST"
	hash_key ="LockID"
        attribute {
         name ="LockID"
         type = "S"
          }
}
