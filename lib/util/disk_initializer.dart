import 'package:disk_space_2/disk_space_2.dart';

class DiskInitializer {
  double _totalDiskSpace = 0;
  double _freeDiskSpace = 0;
  double _usedDiskSpace = 0;
  double _usedDiskSpacePercentage = 0;

  Future<String> get totalDiskSpace async {
    _totalDiskSpace = await DiskSpace.getTotalDiskSpace ?? 0;
    return (_totalDiskSpace / 1000).toStringAsFixed(2);
  }

  Future<String> get freeDiskSpace async {
    _freeDiskSpace = await DiskSpace.getFreeDiskSpace ?? 0;
    return (_freeDiskSpace / 1000).toStringAsFixed(2);
  }

  Future<String> get usedDiskSpace async {
    _totalDiskSpace = await DiskSpace.getTotalDiskSpace ?? 0;
    _freeDiskSpace = await DiskSpace.getFreeDiskSpace ?? 0;
    _usedDiskSpace = (_totalDiskSpace - _freeDiskSpace);
    return (_usedDiskSpace / 1000).toStringAsFixed(2);
  }

  Future<double> get usedDiskSpacePercentage async {
    _totalDiskSpace = await DiskSpace.getTotalDiskSpace ?? 0;
    _freeDiskSpace = await DiskSpace.getFreeDiskSpace ?? 0;
    _usedDiskSpacePercentage = _usedDiskSpace / _totalDiskSpace;
    return _usedDiskSpacePercentage;
  }
}
