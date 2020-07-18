from django.test import TestCase

from app.calc import add, subtract


class CalcTest(TestCase):

    # test function always begins with "test"
    def test_add_numbers(self):
        """
        Test that two nos are added together
        :return:
        """
        self.assertEqual(add(3, 9), 12)

    def test_subtract_numbers(self):
        """
        Tests that values are subtracted and returned
        :return:
        """
        self.assertEqual(subtract(5, 11), -6)
