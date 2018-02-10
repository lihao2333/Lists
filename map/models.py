
class Receiver(models.Model):
    x = models.FloatField(max_length=10)
    y = models.FloatField(max_length=10)
    ip = models.CharField(max_length=20)
