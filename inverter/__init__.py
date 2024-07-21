from .inverter import Inverter, __red_end_user_data_statement__


async def setup(bot):
    bot.add_cog(Inverter(bot))
