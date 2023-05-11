class RegistroFinanciero:
    def __init__(self):
        self.ingresos = []
        self.gastos = []

    def agregar_ingreso(self, cantidad, descripcion):
        self.ingresos.append({'cantidad': cantidad, 'descripcion': descripcion})

    def agregar_gasto(self, cantidad, descripcion):
        self.gastos.append({'cantidad': cantidad, 'descripcion': descripcion})

    def saldo_actual(self):
        ingresos_totales = sum([ingreso['cantidad'] for ingreso in self.ingresos])
        gastos_totales = sum([gasto['cantidad'] for gasto in self.gastos])
        return ingresos_totales - gastos_totales
