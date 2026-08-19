import os
import sys
import unittest


MODULE_DIRECTORY = os.path.dirname(os.path.abspath(__file__))
if MODULE_DIRECTORY not in sys.path:
    sys.path.insert(0, MODULE_DIRECTORY)
import SimulatorOutput


class SimulatorOutputHelpersTest(unittest.TestCase):

    def test_case_name_accepts_remote_style_path(self):
        directory, case_name = SimulatorOutput._case_name(
            '/remote/results/quarter_five_spot.pvd')
        self.assertEqual('/remote/results', directory)
        self.assertEqual('quarter_five_spot', case_name)

    def test_case_name_rejects_non_pvd_file(self):
        self.assertRaises(ValueError, SimulatorOutput._case_name, 'case.vti')

    def test_sanitize_pipeline_name(self):
        self.assertEqual('INJ_1_North',
                         SimulatorOutput._sanitize_pipeline_name(
                             ' INJ 1/North ', 'well_0'))
        self.assertEqual('well_4',
                         SimulatorOutput._sanitize_pipeline_name('***', 'well_4'))

    def test_unique_names_suffix_duplicates(self):
        self.assertEqual(
            ['INJ', 'INJ_2', 'well_2'],
            SimulatorOutput._unique_well_names(
                [0, 1, 2], ['INJ', 'INJ', '']))

    def test_generated_suffix_does_not_collide_with_real_name(self):
        self.assertEqual(
            ['INJ', 'INJ_2', 'INJ_2_2'],
            SimulatorOutput._unique_well_names(
                [0, 1, 2], ['INJ', 'INJ', 'INJ_2']))

    def test_missing_or_malformed_names_use_well_ids(self):
        self.assertEqual(
            ['well_3', 'well_8'],
            SimulatorOutput._unique_well_names([3, 8], None))
        self.assertEqual(
            ['well_3', 'well_8'],
            SimulatorOutput._unique_well_names([3, 8], ['only_one']))

    def test_extraction_script_selects_numeric_id_and_builds_vertex(self):
        script = SimulatorOutput._extraction_script(17)
        self.assertIn('GetInputDataObject(0, 0)', script)
        self.assertIn("GetArray('WellId')", script)
        self.assertIn('== 17', script)
        self.assertIn('SetVerts(vertices)', script)
        self.assertIn('output_data.Initialize()', script)
        self.assertIn('CopyAllocate(input_point_data, 1)', script)
        self.assertIn('CopyData(input_point_data, point_index, 0)', script)


if __name__ == '__main__':
    unittest.main()
